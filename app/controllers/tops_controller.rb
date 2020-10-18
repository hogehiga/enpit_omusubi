class TopsController < ApplicationController
    def index
        @navigate_form = NavigateForm.new
        @images = Image.all
    end

    def navigate
        @navigate_form = NavigateForm.new
        @navigate_form.images = params['images']

        unless @navigate_form.valid?
          @images = Image.all
          render :index
          return
        end

        @route = Image.find(params['images']).shuffle
        @images = Image.all
        render :index
    end
end
