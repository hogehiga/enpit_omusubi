class TopsController < ApplicationController
    def index
        @images = Image.all
    end
end
