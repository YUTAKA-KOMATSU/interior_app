class Comment < ApplicationRecord
  belongs_to :myinterior
  belongs_to :user

  validates :text, presence: true
end
