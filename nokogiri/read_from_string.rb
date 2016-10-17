require 'nokogiri'

doc = Nokogiri::XML("<staff_list><staff><name>Paul</name></staff><staff><name>Andrew</name></staff></staff_list>")

puts doc.root
