require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = Product.new(category: "Категория", rubric: "Рубрика", name: "Example Product", price: "1.00", min_order: "5 шт.", description: "few word about this product", image: "1.png", vendor_code: "FFF122")
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
    @product.description = "     "
    assert_not @product.valid?
  end

end
