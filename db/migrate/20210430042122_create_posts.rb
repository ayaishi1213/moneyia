class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer    :category_id, null: false
      t.string     :title,       null: false
      t.text       :article,     null: false
      t.references :user,        null: false
      t.timestamps
    end
  end
end
