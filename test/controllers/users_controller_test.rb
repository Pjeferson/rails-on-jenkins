# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'index' do
    get users_url

    users = JSON.parse(response.body)

    assert_equal 2, users.count
  end
end
