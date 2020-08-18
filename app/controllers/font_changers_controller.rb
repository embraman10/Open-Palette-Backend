class FontChangersController < ApplicationController

    
    def index
        render({json: FontChanger.all})
    end
end
