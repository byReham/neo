require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "ООО НеоСнабТрэйд"
    assert_equal full_title("Help"), "Help | ООО НеоСнабТрэйд"
  end
end
