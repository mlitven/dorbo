class VisitorsController < ApplicationController
  def index
    @strips = Strip.all.select do |strip|
      strip.published == true
    end



  end
end
