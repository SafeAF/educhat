require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    check "Administrator" if @user.administrator
    fill_in "Confirmation sent at", with: @user.confirmation_sent_at
    fill_in "Confirmation token", with: @user.confirmation_token
    fill_in "Confirmed at", with: @user.confirmed_at
    fill_in "Created at", with: @user.created_at
    fill_in "Current sign in at", with: @user.current_sign_in_at
    fill_in "Current sign in ip", with: @user.current_sign_in_ip
    fill_in "Email", with: @user.email
    fill_in "Encrypted password", with: @user.encrypted_password
    fill_in "Last ip address", with: @user.last_ip_address
    fill_in "Last sign in at", with: @user.last_sign_in_at
    fill_in "Last sign in ip", with: @user.last_sign_in_ip
    fill_in "Location", with: @user.location
    check "Locked" if @user.locked
    check "Moderator" if @user.moderator
    fill_in "Remember created at", with: @user.remember_created_at
    fill_in "Reset password sent at", with: @user.reset_password_sent_at
    fill_in "Reset password token", with: @user.reset_password_token
    fill_in "Sign in count", with: @user.sign_in_count
    fill_in "Unconfirmed email", with: @user.unconfirmed_email
    fill_in "Updated at", with: @user.updated_at
    fill_in "Username", with: @user.username
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    check "Administrator" if @user.administrator
    fill_in "Confirmation sent at", with: @user.confirmation_sent_at
    fill_in "Confirmation token", with: @user.confirmation_token
    fill_in "Confirmed at", with: @user.confirmed_at
    fill_in "Created at", with: @user.created_at
    fill_in "Current sign in at", with: @user.current_sign_in_at
    fill_in "Current sign in ip", with: @user.current_sign_in_ip
    fill_in "Email", with: @user.email
    fill_in "Encrypted password", with: @user.encrypted_password
    fill_in "Last ip address", with: @user.last_ip_address
    fill_in "Last sign in at", with: @user.last_sign_in_at
    fill_in "Last sign in ip", with: @user.last_sign_in_ip
    fill_in "Location", with: @user.location
    check "Locked" if @user.locked
    check "Moderator" if @user.moderator
    fill_in "Remember created at", with: @user.remember_created_at
    fill_in "Reset password sent at", with: @user.reset_password_sent_at
    fill_in "Reset password token", with: @user.reset_password_token
    fill_in "Sign in count", with: @user.sign_in_count
    fill_in "Unconfirmed email", with: @user.unconfirmed_email
    fill_in "Updated at", with: @user.updated_at
    fill_in "Username", with: @user.username
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
