class Post < ApplicationRecord
  
  with_options presence:true do
    validates :category_id, numericality: { other_than: 1 } 
    validates :title
    validates :article
  end

  belongs_to :user
  has_many  :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
