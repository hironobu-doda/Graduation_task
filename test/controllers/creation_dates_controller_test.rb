require 'test_helper'

class CreationDatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creation_dates_index_url
    assert_response :success
  end

end
