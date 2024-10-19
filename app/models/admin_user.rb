class AdminUser < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  has_one :wallet
  def self.ransackable_attributes(auth_object = nil)
    [
      "created_at", 
      "email", 
      "id", 
      "remember_created_at", 
      "reset_password_sent_at", 
      "updated_at"
    ]
  end
end
