class UserPalettesController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

    def index
        render({json: UserPalette.all})
    end
    

      def show
        render json: @userPalette
      end

    def create
        @userPalette = UserPalette.new(userPalette_params)
        if @userPalette.save
          render json: @userPalette, status: :created
        else
          render json: @userPalette.errors, status: :unprocessable_entity
        end
    end

    def update
      if @userPalette.update(userPalette_params)
        render json: @userPalette
      else
        render json: @userPalette.errors, status: :unprocessable_entity
      end
    end
    
    def destroy
      @userPalette.destroy
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_event
          @userPalette = UserPalette.find(params[:id])
        end
        # Only allow a trusted parameter "white list" through.
        def userPalette_params
          params.require(:user_palette).permit(:background_color, :font_color, :font_family, :user_id)
    end

    
end
