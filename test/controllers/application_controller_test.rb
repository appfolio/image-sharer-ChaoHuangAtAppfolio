require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  def test_home
    get root_path
    assert_select 'h1', 'Hello everyone!'
  end

  def test_new_form
    get new_image_url
    assert_select 'input.js-url-field', 1
    # assert_select 'button', 1
  end
end
