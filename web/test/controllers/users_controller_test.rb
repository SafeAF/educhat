require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { administrator: @user.administrator, confirmation_sent_at: @user.confirmation_sent_at, confirmation_token: @user.confirmation_token, confirmed_at: @user.confirmed_at, created_at: @user.created_at, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, email: @user.email, encrypted_password: @user.encrypted_password, last_ip_address: @user.last_ip_address, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, location: @user.location, locked: @user.locked, moderator: @user.moderator, remember_created_at: @user.remember_created_at, reset_password_sent_at: @user.reset_password_sent_at, reset_password_token: @user.reset_password_token, sign_in_count: @user.sign_in_count, unconfirmed_email: @user.unconfirmed_email, updated_at: @user.updated_at, username: @user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { administrator: @user.administrator, confirmation_sent_at: @user.confirmation_sent_at, confirmation_token: @user.confirmation_token, confirmed_at: @user.confirmed_at, created_at: @user.created_at, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, email: @user.email, encrypted_password: @user.encrypted_password, last_ip_address: @user.last_ip_address, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, location: @user.location, locked: @user.locked, moderator: @user.moderator, remember_created_at: @user.remember_created_at, reset_password_sent_at: @user.reset_password_sent_at, reset_password_token: @user.reset_password_token, sign_in_count: @user.sign_in_count, unconfirmed_email: @user.unconfirmed_email, updated_at: @user.updated_at, username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
