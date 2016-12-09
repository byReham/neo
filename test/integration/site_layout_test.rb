require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
    #assert_select "a[href=?]", products_new_path
    get contact_path
    assert_select "title", full_title("Контакты")
    get signup_path
    assert_select "title", full_title("Регистрация")

  end
end