class Chapter < ApplicationRecord
  has_many :short_sentences
  accepts_nested_attributes_for :short_sentences
end
