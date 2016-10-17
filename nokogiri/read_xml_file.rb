require 'nokogiri'

doc = Nokogiri::XML(File.open('books.xml'))

books = doc.xpath('/bookstore/book')

books.each do |book|
  puts '------------------'
  puts 'Category: ' + book.attr('category')
  puts 'Title:    ' + book.xpath('title')[0].content
  puts 'Author:   ' + book.xpath('author')[0].content
  puts 'Year:     ' + book.xpath('year')[0].content
  puts 'Price:    ' + book.xpath('price')[0].content
end

