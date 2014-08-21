class Book < ActiveRecord::Base
  def authors_of_books_with_similar_length
    binding.pry
    books = Book.where('page_length BETWEEN ? AND ?', page_length - 10, page_length + 10)
    books.map(&:author)
  end

  def self.seed_books
    Book.create(title: 'title', author: 'author', page_length: 135)
    Book.create(title: 'title2', author: 'some guy', page_length: 135)
    Book.create(title: 'crazy long book', author: 'some guy', page_length: 340)
  end
end
