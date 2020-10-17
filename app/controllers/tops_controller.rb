class TopsController < ApplicationController
    def index
        @images = Image.all
    end

    def navigate
        puts params
    end
end
