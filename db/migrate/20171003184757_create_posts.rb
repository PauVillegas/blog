class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :slug
      t.text :contenido
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
