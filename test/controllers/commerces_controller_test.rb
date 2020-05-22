require 'test_helper'

class CommercesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get commerces_index_url
    assert_response :success
  end

  test 'should get show' do
    get commerces_show_url
    assert_response :success
  end

  test 'should get create' do
    get commerces_create_url
    assert_response :success
  end

  test 'should get edit' do
    get commerces_edit_url
    assert_response :success
  end

  test 'should get update' do
    get commerces_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get commerces_destroy_url
    assert_response :success
  end
end
