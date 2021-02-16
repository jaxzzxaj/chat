class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #nameカラムに空のの場合は保存しない
  validates :name, presence: true

  has_many :room_users
  has_many :rooms, through: :romm_users
  has_many :messages
end
