 #!/usr/bin/ruby
require 'uri'

def class_exists?(class_name)
  klass = Module.const_get(class_name)
  return klass.is_a?(Class)
rescue NameError
  return false
end

if class_exists? 'Encoding'
  Encoding.default_external = Encoding::UTF_8 if Encoding.respond_to?('default_external')
  Encoding.default_internal = Encoding::UTF_8 if Encoding.respond_to?('default_internal')
end

begin
  input = STDIN.read.force_encoding('utf-8')
rescue
  input = STDIN.read
end

input.gsub!(/\[\[(.*?)\]\]/) do |m|
  match = Regexp.last_match
  "[#{match[1]}](thearchive://match/#{URI.escape(match[1])}.txt)"
end

print input
