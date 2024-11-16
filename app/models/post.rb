class Post < ApplicationRecord
  has_rich_text :body
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
