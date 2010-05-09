class User < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_confirmation_of :password
  validates_length_of :password, :within => 5..40

  def self.authenticate(user_info)
    find_by_username_and_password(user_info[:username],
		user_info[:password])
  end
end
