require 'json'

module HandlersFile
  def load_peoples
    []
  end

  def load_books
    file = 'books.json'
    if File.exist? file
      JSON.parse(File.read(file), create_additions: true).map { |book| JSON.parse(book) }
    else
      []
    end
  end

  def load_rentals
    []
  end

  def poeples_to_json
    json = []
    @peoples.each do |people|
      if people.instance_of?(Teacher)
        json.push({ class: 'teacher', id: people.id, age: people.age, name: people.name,
                    specialization: people.specialization })
      else
        json.push({ class: 'student', id: people.id, age: people.age, name: people.name })
      end
    end
    File.open('peoples.json', 'w') { |f| f.write JSON.generate(json) }
  end

  def books_to_json
    json = []
    @books.each do |book|
      json.push({ title: book.title, author: book.author })
    end
    File.open('books.json', 'w') { |f| f.write JSON.generate(json) }
  end

  def rentals_to_json
    json = []
    @rentals.each do |book|
      # json.push({ title: book.title, author: book.author })
    end
    File.open('rentals.json', 'w') { |f| f.write JSON.generate(json) }
  end

  def persist_data
    poeples_to_json unless @peoples.empty?
    books_to_json unless @books.empty?
    # rentals_to_json unless @rentals.empty?
  end
end
