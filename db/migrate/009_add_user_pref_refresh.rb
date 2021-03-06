class AddUserPrefRefresh < ActiveRecord::Migration[5.2]
  
  class User < ActiveRecord::Base; serialize :preferences; end
  
  def self.up
    @users = User.all
    @users.each do |user|
      user.preferences.merge!({"refresh" => "0"})
      user.save
    end
  end

  def self.down
  end
end
