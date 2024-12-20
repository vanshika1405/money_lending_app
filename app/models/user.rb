class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :loans
  has_one :wallet
  after_create :create_wallet #callback 
  def self.ransackable_attributes(auth_object = nil)
    ["id", "email", "admin", "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["loans"]
  end

  def admin?
    self.admin == true
  end
  
  def create_wallet
    Wallet.create(user_id: self.id, balance: 10000.00)
  end
end
