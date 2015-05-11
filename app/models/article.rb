class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :body, presence: true
end
