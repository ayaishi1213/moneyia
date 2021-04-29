class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence:true do
    validates :nickname
    validates :last_name
    validates :first_name
    validates :occupation
    validates :birthday
  end

has_many  :posts
has_many  :comments
end
 
