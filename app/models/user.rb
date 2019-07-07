class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with:  /\A^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$\z/ }
  validates :password, format: { with: /\A^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z\-]{8,32}$\z/,
  message: "大文字英数を1つ以上含む英数字8文字以上32文字以内で設定してください" }
  has_secure_password
end
