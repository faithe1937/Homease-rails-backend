class Project < ApplicationRecord
  belongs_to :homeowner, :class_name => "User"
  belongs_to :contractor, :class_name => "User"
  has_many :invoices
  has_many :posts
end
