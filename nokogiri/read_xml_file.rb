require 'nokogiri'

doc = Nokogiri::XML('books.xml')

books = doc.xpath('/bookstore/book')

books.each do |book|
  puts '------------------'
  puts book.attr('category')
end

