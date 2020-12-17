class Myinterior < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :concept, presence: true
  validates :category_id, presence: true,  numericality: { other_than: 1 } 
  validates :image, presence: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
