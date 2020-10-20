require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "approximate_shortest_route_2枚" do
    route = Image.approximate_shortest_route(images(:syurijou).id, [images(:kourijima)].map(&:id))
    assert_equal route.length, 2
    assert_equal route[0], images(:syurijou)
    assert_equal route[1], images(:kourijima)
  end
end
