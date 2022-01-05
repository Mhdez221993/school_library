require_relative '../book'

describe Book do
  book = Book.new('Lord fo the Rings', 'Tolkien')
  it('Shoud chec if book is instance of Book') do
    expect(book).to be_instance_of(Book)
  end
end
