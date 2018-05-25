require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  def test_form
    get new_image_url
    assert_select 'input.js-url-field', 1
  end

  def test_create
    # a valid url should success
    post images_url params: {:image => {:url => 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54K3A69q097_SDGCU%3D&sa=X&ved=0ahUKEwje6_Luhp3bAhWFHzQIHaNzCqwQ_h0ImAEwDQ#imgrc=KRZIiHKQU'}}
    puts request.POST.inspect
    assert_select '#notice', 1
  end

  def test_edit
    @image = Image.new(:url => 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54K3A69q097_SDGCU%3D&sa=X&ved=0ahUKEwje6_Luhp3bAhWFHzQIHaNzCqwQ_h0ImAEwDQ#imgrc')
    @image.save
    get edit_image_url @image
    assert_select 'input.js-url-field'
  end

  def test_delete
    @image = Image.new(:url => 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54K3A69q097_SDGCU%3D&sa=X&ved=0ahUKEwje6_Luhp3bAhWFHzQIHaNzCqwQ_h0ImAEwDQ')
    @image.save
    delete image_url @image
    assert_select '#notice', 1
  end

  def test_update
    @image = Image.new(:url => 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54K3A69q097_SDGCU%3D&sa=X&ved=0ahUKEwje6_Luhp3bAhWFHzQIHaN')
    @image.save
    put image_url @image, params: {:image => {:url => 'https://www.google.com/search?q=images&tbm=isch&source=iu&ictx=1&fir=KnfGsIck6AyC7M%253A%252CkLUcHIx_h2WGsM%252C_&usg=__bRetOmzvuL54'}}
    assert_select '#notice', 1
  end
end
