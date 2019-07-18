class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with:  /\A^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$\z/ }
  validates :password, presence: true
  has_secure_password
  
  has_many :topics, dependent: :destroy
  has_many :favorites
  has_many :comments
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
