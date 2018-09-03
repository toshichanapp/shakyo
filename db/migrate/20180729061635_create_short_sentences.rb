class CreateShortSentences < ActiveRecord::Migration[5.2]
  def change
    create_table :short_sentences do |t|
      t.integer :chapter_id, foreign_key: true
      t.string :jpn
      t.string :eng
      t.string :picture
      t.string :voice
      t.timestamps
    end
  end
end
