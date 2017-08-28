class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@likelion.org\z/, message: "멋사메일을 입력해주세요." }
  has_many :posts
  has_many :applies
end
