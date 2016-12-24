require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @admin = users(:michael)
  end

  test "should get new" do
    log_in_as(@admin)
    get new_product_path
    assert_response :success
  end

end
