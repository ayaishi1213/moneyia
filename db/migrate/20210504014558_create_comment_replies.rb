class CreateCommentReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_replies do |t|
      t.references :user
      t.references :post
      t.references :comment
      t.text       :text
      t.timestamps
    end
  end
end
