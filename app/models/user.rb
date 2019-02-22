class User < ApplicationRecord
  has_secure_password
  if User.count == 0
    User.create({:name => "Admin", :email => "admin@admin.com", :password => "admin"})
  end
  # Verify that email fiel-d is not blank and that it doesn't already exist in the db (prevents duplicates)
  validates :name, :presence => true
  validates :email, :presence => true

 # validates :user_type, :presence =>true
end
