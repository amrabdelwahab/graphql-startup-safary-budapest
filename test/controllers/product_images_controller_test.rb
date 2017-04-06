require 'test_helper'

class ProductImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_image = product_images(:one)
  end

  test "should get index" do
    get product_images_url
    assert_response :success
  end

  test "should get new" do
    get new_product_image_url
    assert_response :success
  end

  test "should create product_image" do
    assert_difference('ProductImage.count') do
      post product_images_url, params: { product_image: { name: @product_image.name, product_id: @product_image.product_id, url: @product_image.url } }
    end

    assert_redirected_to product_image_url(ProductImage.last)
  end

  test "should show product_image" do
    get product_image_url(@product_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_image_url(@product_image)
    assert_response :success
  end

  test "should update product_image" do
    patch product_image_url(@product_image), params: { product_image: { name: @product_image.name, product_id: @product_image.product_id, url: @product_image.url } }
    assert_redirected_to product_image_url(@product_image)
  end

  test "should destroy product_image" do
    assert_difference('ProductImage.count', -1) do
      delete product_image_url(@product_image)
    end

    assert_redirected_to product_images_url
  end
end
