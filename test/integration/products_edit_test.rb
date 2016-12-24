require 'test_helper'

class ProductsEditTest < ActionDispatch::IntegrationTest

  def setup
    @product = products(:one)
  end

  test "unsuccessful edit" do
    get edit_product_path(@product)
    assert_template 'products/edit'
    patch product_path(@product), params: { product: { name:  "",
                                              price: "0.00",
                                              image:              "32.jpg",
                                              details: "bla-bla-bla" } }

    assert_template 'products/edit'
  end
  
end
