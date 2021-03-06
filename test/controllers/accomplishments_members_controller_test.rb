# frozen_string_literal: true

require 'test_helper'

class AccomplishmentsMembersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get accomplishments_members_index_url
    assert_response :success
  end

  test 'should get show' do
    get accomplishments_members_show_url
    assert_response :success
  end

  test 'should get new' do
    get accomplishments_members_new_url
    assert_response :success
  end

  test 'should get edit' do
    get accomplishments_members_edit_url
    assert_response :success
  end

  test 'should get delete' do
    get accomplishments_members_delete_url
    assert_response :success
  end
end
