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
    user: 0,
    partner: 1,
    employee: 2,
  }

end
