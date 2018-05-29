require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = Image.create!(:url => 'https://www.healthypawspetinsurance.com/Images/V3/DogAndPuppyInsurance/Dog_CTA_Desktop_HeroImage.jpg')
  end

  def test_index
    get images_path

    assert_response :ok
    assert_select 'h1', 'Images'
  end

  def test_show
    get image_path(@image.id)

    assert_response :ok
    assert_select '.url', @image.url
  end

  def test_new
    get new_image_path

    assert_response :ok
    assert_select 'h1', 'New Image'
  end

  def test_edit
    get edit_image_path(@image.id)

    assert_response :ok
    assert_select 'h1', 'Editing Image'
  end

  def test_create_success
    assert_difference('Image.count', 1) do
      image_params = {url: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Rottweiler-1.jpg'}
      post images_path, params: {image: image_params}
    end

    assert_redirected_to image_path(Image.last)
    assert_equal 'Image was successfully created.', flash[:notice]
  end

  def test_create_fail
    assert_no_difference('Image.count') do
      image_params = {url: ' '}
      post images_path, params: {image: image_params}
    end

    assert_response :ok
    assert_select 'h1', 'New Image'
    assert_select '.invalid-feedback', 1
    assert_select '.invalid-feedback', 'Url Invalid url.'
  end

  def test_update_success
    image_params = {:url => 'https://images.pexels.com/photos/58997/pexels-photo-58997.jpeg?auto=compress&cs=tinysrgb&h=350'}
    put image_path(@image.id), params: {image: image_params}

    assert_redirected_to image_path(@image.id)
    assert_equal 'Image was successfully updated.', flash[:notice]
  end

  def test_update_fail
    image_params = {url: ' '}
    put image_path(@image.id), params: {image: image_params}

    assert_select 'h1', 'Editing Image'
  end

  def test_delete
    assert_difference('Image.count', -1) do
      delete image_path(@image.id)
    end

    assert_redirected_to images_path
    assert_equal 'Image was successfully destroyed.', flash[:notice]
  end

  def test_create_newest_shows_first
    assert_difference('Image.count', 1) do
      image_params = {:url => 'https://myfirstshiba.com/wp-content/uploads/2017/04/AdobeStock_128841363_reduced.jpg'}
      post images_path, params: {image: image_params}
    end

    assert_redirected_to image_path(Image.last)
    get images_path

    assert_response :ok
    assert_select '#0', 'https://myfirstshiba.com/wp-content/uploads/2017/04/AdobeStock_128841363_reduced.jpg'
  end

end
