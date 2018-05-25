require 'test_helper'

class ImageTest < ActiveSupport::TestCase

  test 'invalid url' do
    # below is an invalid url
    image = Image.new(url: '123.adaf')
    refute image.valid?
  end

  test 'valid url' do
    # below is a valid url
    image = Image.new(url: 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54K3A69q097_SDGCU%3D&sa=X&ved=0ahUKEwje6_Luhp3bAhWFHzQIHaNzCqwQ_h0ImAEwDQ#imgrc=KRZIiHKQUAZCCM:')
    assert image.valid?
  end

  test 'empty url' do
    # below is an empty url should fail
    image = Image.new(url: '')
    refute image.valid?
  end

  test 'duplicate url should fail' do
    params = {url: 'kk.com'}
    image1 = Image.new(params)
    image1.save
    image2 = Image.new(params)
    refute image2.valid?
  end
end
