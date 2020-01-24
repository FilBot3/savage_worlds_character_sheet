#

require 'erb'
require 'yaml'

if ARGV[0].nil? || ARGV[0].empty?
  raise "Supply the YAML character data file."
end

character_data_file = ARGV[0]

config = YAML.safe_load(File.read(character_data_file))

mobile_template = ERB.new(File.read('mobile_template/savage_worlds_mobile.html.erb'), nil, "%")
#template.run

File.open("character_sheets/#{config['character_name']}_mobile_character_sheet.html", 'w') do |file|
  file.write(mobile_template.result(binding))
end

puts "=> Generated character_sheets/#{config['character_name']}_mobile_character_sheet.html"

desktop_template = ERB.new(File.read('desktop_template/savage_worlds_desktop.html.erb'), nil, "%")

File.open("character_sheets/#{config['character_name']}_desktop_character_sheet.html", 'w') do |file|
  file.write(desktop_template.result(binding))
end

puts "=> Generated character_sheets/#{config['character_name']}_desktop_character_sheet.html"
