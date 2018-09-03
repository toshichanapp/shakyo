require 'csv'

CSV.foreach('db/short_sentences.csv', headers: true, encoding: 'UTF-16') do |row|
  ActiveRecord::Base.transaction do
    book = Book.find_or_create_by(title: row['book_title'])
    chapter =  Chapter.find_or_create_by(title: row['chapter'])
    short_sentence = ShortSentence.create(
                 jpn: row['jpn'],
                 eng: row['eng']
    )
    chapter.short_sentences << short_sentence
    book.chapters << chapter
  end
end
