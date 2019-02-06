require 'test_helper'

class StudentcohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get studentcohorts_index_url
    assert_response :success
  end

  test "should get show" do
    get studentcohorts_show_url
    assert_response :success
  end

  test "should get edit" do
    get studentcohorts_edit_url
    assert_response :success
  end

  test "should get new" do
    get studentcohorts_new_url
    assert_response :success
  end

end
