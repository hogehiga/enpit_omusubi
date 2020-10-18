class TopsController < ApplicationController
    def index
        @navigate_form = NavigateForm.new
        @images = Image.all
    end

    def navigate
        @route = Image.find(params['images']).shuffle
        @navigate_form = NavigateForm.new
        @navigate_form.images = params['images']
        @images = Image.all
        render :index
    end
end
