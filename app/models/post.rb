class Post < ActiveRecord::Base
  has_many :comment
  belongs_to :category
  belongs_to :user
end
