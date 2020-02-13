class User < ApplicationRecord
    has_secure_password
    # validates :email, uniqueness: { case_sensitive: false }
    # validates :email, :password_digest, :firstname, presence: true 
    
    has_many :projects
    has_many :posts, through: :projects
    # has_many :invoices, through: :projects
  end