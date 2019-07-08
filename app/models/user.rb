class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with:  /\A^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$\z/ }
  validates :password, format: { with: /\A^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z\-]{8,32}$\z/ }
  has_secure_password
end
