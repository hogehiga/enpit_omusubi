class TopsController < ApplicationController
    def index
        @navigate_form = NavigateForm.new
        @images = Image.all
    end

    def navigate
        @navigate_form = NavigateForm.new(navigate_form_params)

        unless @navigate_form.valid?
          @images = Image.all
          render :index
          return
        end

        @route = Image.find(@navigate_form.images).shuffle
        @images = Image.all
        render :index
    end

    private
        def navigate_form_params
            params.permit(images: [])
        end
end
