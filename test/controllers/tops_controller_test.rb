require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  test "画像選択なし" do
    post root_url
    assert_response :success
    assert response.body.include?("画像を選択してください")
  end

  test "画像選択1枚_首里城" do
    post root_url, params: { images: [images(:syurijou).id]}
    assert_response :redirect
  end
end
