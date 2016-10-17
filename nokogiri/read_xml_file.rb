require 'nokogiri'

doc = Nokogiri::XML('books.xml')

books = doc.xpath('/bookstore/book')

books.each do |book|
  puts book.attr('category')
end

