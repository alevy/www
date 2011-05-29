#!/usr/bin/env ruby

require 'erb'
require 'maruku'

def proccess(file)
  ERB.new(file.read).result(binding)
end

file = File.new($*.shift) unless $*.empty?

dir = File.dirname(file.path)
references = File.read(File.join(dir, "content/references.markdown"))

result = proccess(file) do |tmpl_name|
  tmpl_file = File.join(dir, "content/#{tmpl_name}.html.markdown")
  Maruku.new([File.read(tmpl_file), references].join("\n")).to_html
end

puts result
