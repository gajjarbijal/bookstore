class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.references :author, foreign_key: true
      t.references :publisher, foreign_key: true
      t.string :isbn
      t.string :year
      t.string :price
      t.string :buy
      t.text :excerpt
      t.string :format
      t.integer :pages

      t.timestamps
    end
  end
end
