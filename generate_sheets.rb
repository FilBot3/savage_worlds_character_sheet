#

require 'erb'
require 'yaml'

if ARGV[0].nil? || ARGV[0].empty?
  raise "Supply the YAML character data file."
end

character_data_file = ARGV[0]

config = YAML.safe_load(File.read(character_data_file))

template = ERB.new(File.read('mobile_template/savage_worlds_mobile.html.erb'), nil, "%")
#template.run

File.open("character_sheets/#{config['character_name']}_mobile_character_sheet.html", 'w') do |file|
  file.write(template.result(binding))
end

puts "=> Generated character_sheets/#{config['character_name']}_mobile_character_sheet.html"
