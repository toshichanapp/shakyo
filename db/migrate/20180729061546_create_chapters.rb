class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :book_id, foreign_key: true
      t.string :title
      t.timestamps
    end
  end
end
