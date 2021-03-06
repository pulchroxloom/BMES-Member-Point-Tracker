# frozen_string_literal: true

require 'test_helper'

class ManualPointsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get manual_points_index_url
    assert_response :success
  end

  test 'should get show' do
    get manual_points_show_url
    assert_response :success
  end

  test 'should get edit' do
    get manual_points_edit_url
    assert_response :success
  end
end
