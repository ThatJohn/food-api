require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest

  test "should get the index" do
    get trucks_url
    assert_response :success
  end

end
