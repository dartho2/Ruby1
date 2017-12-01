require 'test_helper'

class AllegroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get allegro_index_url
    assert_response :success
  end

end
