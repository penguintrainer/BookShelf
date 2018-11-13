class Book < ApplicationRecord
  require 'concerns/search-book.rb'
  include SearchBook
  validates :title, presence: true, length: { maximum: 255 }
  validates :author, length: { maximum: 255 }
  has_and_belongs_to_many :categories
end