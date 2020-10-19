class GoController < ApplicationController
    protect_from_forgery
    def index
        @images = params[:go_image_name].keys
    end
end
