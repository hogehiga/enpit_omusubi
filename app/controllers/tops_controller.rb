class TopsController < ApplicationController
    def index
        @images = Image.all
    end

    def navigate
        @route = Image.find(params['images']).shuffle
        @images = Image.all
        render :index
    end
end
