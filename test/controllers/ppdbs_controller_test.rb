require 'test_helper'

class PpdbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ppdbs_index_url
    assert_response :success
  end

  test "should get edit" do
    get ppdbs_edit_url
    assert_response :success
  end

  test "should get update" do
    get ppdbs_update_url
    assert_response :success
  end

  test "should get new" do
    get ppdbs_new_url
    assert_response :success
  end

  test "should get create" do
    get ppdbs_create_url
    assert_response :success
  end

  test "should get show" do
    get ppdbs_show_url
    assert_response :success
  end

  test "should get destroy" do
    get ppdbs_destroy_url
    assert_response :success
  end

end
