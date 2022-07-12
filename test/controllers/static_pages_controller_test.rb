require "test_helper"
require "minitest/reporters"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    # To chyba cos typu init dla klasy?
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end


end
