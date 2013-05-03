class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :body
      t.datetime :created_at

      t.timestamps
    end
  end
end