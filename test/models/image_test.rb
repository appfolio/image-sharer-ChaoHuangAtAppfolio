require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  #   # set an image model up with an invalid url
  #
  #   # make sure valid? returns false
  #
  #   # atomic commits
  # end

  test 'invalid url' do
    # below is an invalid url
    params = { url: '123.adaf' }
    image = Image.new(params)
    refute image.valid?
  end

  test 'valid url' do
    # below is a valid url
    params = { url: '123.com' }
    image = Image.new(params)
    assert image.valid?
  end

  test 'empty url' do
    # below is an empty url should fail
    params = { url: '' }
    image = Image.new(params)
    refute image.valid?
  end

  test 'duplicate url should fail' do
    params = {url: "kk.com"}
    image1 = Image.new(params)
    image1.save
    image2 = Image.new(params)
    refute image2.valid?
  end
end
