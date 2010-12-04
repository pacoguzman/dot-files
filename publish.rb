#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
Dir["**/*.xml"].each do |file|

  xml = File.read(file)
  parsed_file = File.open(file, "w+")

  chapter_id = File.basename(file, ".xml")
  original_xml = Nokogiri::XML(xml)
  nodes = original_xml.xpath("//*")
  ids = nodes.map { |n| (n["id"] && n["id"].split("_").last.to_i) || 0 }
  last_id = ids.max || 0
  new_id = last_id + 1
  
  nodes.each do |e|
    next if !e["id"].nil?
    e.set_attribute("id", "#{chapter_id}_#{new_id}")
    new_id += 1
  end
  
  parsed_file.write(original_xml.to_xml)
end
