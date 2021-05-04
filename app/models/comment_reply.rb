class CommentReply < ApplicationRecord
  validates :text, presence: true
  belongs_to :post
  belongs_to :user
  belongs_to :comment
end
