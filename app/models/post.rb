class Post < ApplicationRecord
  belongs_to :project
  # belongs_to :homeowner, :class_name => "User"
  # belongs_to :contractor, :class_name => "User"
end
