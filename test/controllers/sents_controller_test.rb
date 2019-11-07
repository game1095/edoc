require 'test_helper'

class SentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sents_index_url
    assert_response :success
  end

end
