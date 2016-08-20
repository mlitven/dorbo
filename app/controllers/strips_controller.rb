class StripsController < ApplicationController
  before_action :set_strip, only: [:show, :edit, :update, :destroy]

  # GET /strips
  # GET /strips.json
  def index
    @strips = Strip.all
  end

  # GET /strips/1
  # GET /strips/1.json
  def show
  end

  # GET /strips/new
  def new
    @strip = Strip.new
  end

  # GET /strips/1/edit
  def edit
  end

  # POST /strips
  # POST /strips.json
  def create
    @strip = Strip.new(strip_params)

    respond_to do |format|
      if @strip.save
        format.html { redirect_to @strip, notice: 'Strip was successfully created.' }
        format.json { render :show, status: :created, location: @strip }
      else
        format.html { render :new }
        format.json { render json: @strip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strips/1
  # PATCH/PUT /strips/1.json
  def update
    respond_to do |format|
      if @strip.update(strip_params)
        format.html { redirect_to @strip, notice: 'Strip was successfully updated.' }
        format.json { render :show, status: :ok, location: @strip }
      else
        format.html { render :edit }
        format.json { render json: @strip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strips/1
  # DELETE /strips/1.json
  def destroy
    @strip.destroy
    respond_to do |format|
      format.html { redirect_to strips_url, notice: 'Strip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strip
      @strip = Strip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strip_params
      params.require(:strip).permit(:title, :body, :published)
    end
end
