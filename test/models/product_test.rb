require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = Product.new(name: "Example Product", price: 1, image: "1.png", details: "few word about this product")
  end

  test "should be valid" do
    assert @product.valid?
  end
  
  test "name should be present" do
    @product.name = "     "
    assert_not @product.valid?
  end
  
  test "price should be present" do
    @product.price = "     "
    assert_not @product.valid?
  end
  
  test "image should be present" do
    @product.image = "     "
    assert_not @product.valid?
  end
  
  test "details should be present" do
    @product.details = "     "
    assert_not @product.valid?
  end

end
