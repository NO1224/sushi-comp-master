require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get map_top_url
    assert_response :success
  end

end
