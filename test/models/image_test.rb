require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "approximate_shortest_route_一枚" do
    route = Image.approximate_shortest_route([images(:syurijou)].map(&:id))
    assert_equal route.length, 1
  end

  test "approximate_shortest_route_2枚" do
    route = Image.approximate_shortest_route([images(:syurijou), images(:kourijima)].map(&:id))
    assert_equal route.length, 2 # 2なので順序は問わない
  end
end
