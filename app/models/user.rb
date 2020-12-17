class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :category_id, presence: true,  numericality: { other_than: 1 } 
  has_many :myinteriors
  has_many :comments
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
