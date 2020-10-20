require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "approximate_shortest_route_2枚" do
    route = Image.approximate_shortest_route(images(:syurijou).id, [images(:kourijima)].map(&:id))
    assert_equal route.length, 2
    assert_equal images(:syurijou), route[0]
    assert_equal images(:kourijima), route[1]
  end

  test "approximate_shortest_route_3枚_出発点1" do
    route = Image.approximate_shortest_route(images(:syurijou).id, [images(:kourijima), images(:ouujima)].map(&:id))
    assert_equal route.length, 3
    assert_equal images(:syurijou), route[0]
    assert_equal images(:ouujima), route[1]
    assert_equal images(:kourijima), route[2]
  end

  test "approximate_shortest_route_3枚_出発点2" do
    route = Image.approximate_shortest_route(images(:kourijima).id, [images(:syurijou), images(:ouujima)].map(&:id))
    assert_equal route.length, 3
    assert_equal images(:kourijima), route[0]
    assert_equal images(:ouujima), route[1]
    assert_equal images(:syurijou), route[2]
  end

  test "approximate_shortest_route_3枚_出発点3" do
    route = Image.approximate_shortest_route(images(:ouujima).id, [images(:kourijima), images(:syurijou)].map(&:id))
    assert_equal route.length, 3
    assert_equal images(:ouujima), route[0]
    assert_equal images(:syurijou), route[1]
    assert_equal images(:kourijima), route[2]
  end

  test "approximate_shortest_route_4枚_出発点1" do
    route = Image.approximate_shortest_route(images(:syurijou).id, [images(:kourijima), images(:basutaminaru), images(:ouujima)].map(&:id))
    assert_equal route.length, 4
    assert_equal images(:syurijou), route[0]
    assert_equal images(:ouujima), route[1]
    assert_equal images(:basutaminaru), route[2]
    assert_equal images(:kourijima), route[3]
  end

  test "approximate_shortest_route_4枚_出発点2" do
    route = Image.approximate_shortest_route(images(:kourijima).id, [images(:syurijou), images(:basutaminaru), images(:ouujima)].map(&:id))
    assert_equal route.length, 4
    assert_equal images(:kourijima), route[0]
    assert_equal images(:basutaminaru), route[1]
    assert_equal images(:ouujima), route[2]
    assert_equal images(:syurijou), route[3]
  end

  test "approximate_shortest_route_4枚_出発点3" do
    route = Image.approximate_shortest_route(images(:ouujima).id, [images(:kourijima), images(:basutaminaru), images(:syurijou)].map(&:id))
    assert_equal route.length, 4
    assert_equal images(:ouujima), route[0]
    assert_equal images(:basutaminaru), route[1]
    assert_equal images(:syurijou), route[2]
    assert_equal images(:kourijima), route[3]
  end

  test "approximate_shortest_route_4枚_出発点4" do
    route = Image.approximate_shortest_route(images(:basutaminaru).id, [images(:kourijima), images(:syurijou), images(:ouujima)].map(&:id))
    assert_equal route.length, 4
    assert_equal images(:basutaminaru), route[0]
    assert_equal images(:ouujima), route[1]
    assert_equal images(:syurijou), route[2]
    assert_equal images(:kourijima), route[3]
  end
end
