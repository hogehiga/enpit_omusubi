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

        ids = @navigate_form.images.reject{|k, v| v == "0"}.map{|item| item[0]}.map(&:to_i)
        @route = Image.approximate_shortest_route(Image.find(5).id, ids)
        redirect_to "https://www.google.co.jp/maps/dir/#{@route.map(&:name).join('/')}"
    end

    private
        def navigate_form_params
            params.require(:navigate_form).permit(images: {})
        end
end
