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

        @route = Image.approximate_shortest_route(Image.first, @navigate_form.images.map(&:to_i))
        @images = Image.all
        redirect_to "https://www.google.co.jp/maps/dir/#{@route.map(&:name).join('/')}"
    end

    private
        def navigate_form_params
            params.permit(images: [])
        end
end
