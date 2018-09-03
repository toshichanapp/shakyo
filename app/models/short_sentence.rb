class ShortSentence < ApplicationRecord
  belongs_to :chapter, optional: true

  validates :eng, presence: true,
            format: { with: /\A[0-9a-zA-Z\s".,]*\z/ },
            uniqueness: { case_sensitive: false }
end
