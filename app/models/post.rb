class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  
  with_options presence:true do
    validates :category_id 
    validates :title
    validates :article
  end

belongs_to :user
has_many  :comments
end
