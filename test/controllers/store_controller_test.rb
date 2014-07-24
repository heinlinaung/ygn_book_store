require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  	assert_select '.thumbnails .span4', 3
  	assert_select 'h3', 'Book4'
  	assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
