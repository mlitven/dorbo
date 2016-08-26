class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :is_day_or_night

  def is_day_or_night
    @header_image_filename = "DORBO DAY HEADER.png"
    @is_daytime = true
    if Time.now.hour <= 8 || Time.now.hour >= 20
      @is_daytime = false
      @theme = "night-theme"
      @header_image_filename = "DORBO NIGHT HEADER.png"
    end
  end

end
