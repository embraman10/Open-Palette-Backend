class Api::V1::ColorizersController < ApplicationController
  before_action :set_colorizer, only: [:show, :edit, :update, :destroy]

  # GET /colorizers
  # GET /colorizers.json
  def index
    colorizers = Colorizer.all

    render json: colorizers
  end

  # GET /colorizers/1
  # GET /colorizers/1.json
  def show
  end

  # GET /colorizers/new
  def new
    @colorizer = Colorizer.new
  end

  # GET /colorizers/1/edit
  def edit
  end

  # POST /colorizers
  # POST /colorizers.json
  def create
    @colorizer = Colorizer.new(colorizer_params)
    if @colorizer.save
     render json: @colorizer, status: :created, location: api_v1_colorizer_url(@colorizer)
    else
     render json: @colorizer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /colorizers/1
  # PATCH/PUT /colorizers/1.json
  def update
    respond_to do |format|
      if @colorizer.update(colorizer_params)
        format.html { redirect_to @colorizer, notice: 'Colorizer was successfully updated.' }
        format.json { render :show, status: :ok, location: @colorizer }
      else
        format.html { render :edit }
        format.json { render json: @colorizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colorizers/1
  # DELETE /colorizers/1.json
  def destroy
    @colorizer.destroy
    respond_to do |format|
      format.html { redirect_to colorizers_url, notice: 'Colorizer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colorizer
      @colorizer = Colorizer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colorizer_params
      params.require(:colorizer).permit(:background, :font, :frame_style, :font_color, :slug)
    end
end
