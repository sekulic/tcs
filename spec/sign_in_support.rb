module ValidUserRequestHelper
  def sign_in_as_admin
    @user ||= FactoryGirl.create(:user, admin: true)
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
  end
end