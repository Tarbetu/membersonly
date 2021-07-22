class Post < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false, message: 'Every title should be unique' }
  validates :content, presence: true, length: { minimum: 50 }
  belongs_to :user
end
