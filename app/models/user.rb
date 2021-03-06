class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :animals
  has_many :adoptions
  belongs_to :partner, optional: true;

  validates :name, :address, :age, presence: true;

  enum role: {
    regular: 0,
    owner: 1,
    employee: 2
  }

  has_one_attached :photo
end
