require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    click_on "About"

    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert page.has_content?("About Me!")
  end

  def test_user_can_navigate_home
    visit '/about'
    click_on "Home"

    assert_equal 200, page.status_code
    assert_equal '/', current_path
    assert page.has_content?("Welcome!")
  end

end
