class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
  

  def user_attributes=(u_att)
    if u_att[:username].strip != ""
      self.user = User.find_or_create_by(username: user_attributes[:username])
    end
  end
end
