require 'test_helper'

class CopingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get copings_index_url
    assert_response :success
  end

end
