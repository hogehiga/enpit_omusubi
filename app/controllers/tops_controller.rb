class TopsController < ApplicationController
    def index
        @images = Image.all
    end

    def go_to_list
    end
end
