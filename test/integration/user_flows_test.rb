require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
	test "when login and browse" do
		get new_user_session_path
		post user_session_path, params: { user: { email: users(:daniel).email, password: "123456" } }
		follow_redirect!
	end
end