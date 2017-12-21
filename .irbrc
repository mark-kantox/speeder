class DatabaseUser
  def set_test_password(pwd) 
    u = User.find_by_login “testclient1@kantox.com”
    p = pwd
    u.password = u.password_confirmation = p; u.save! validate:false
		
    puts "User set as #{u.login} with password #{p}"
  end
end
