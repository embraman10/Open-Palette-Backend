class BackgroundColorChangersController < ApplicationController

    def index
        # colorData = RestClient.get "https://unpkg.com/color-name-list@6.10.1/dist/colornames.json"
        # colorDataArray = JSON.parse(colorData)
        # byebug
        render({json: BackgroundColorChanger.all})
    end

end
