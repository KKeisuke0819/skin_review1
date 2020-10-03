require 'test_helper'

class SkinItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skin_items_index_url
    assert_response :success
  end

  test "should get show" do
    get skin_items_show_url
    assert_response :success
  end

end
