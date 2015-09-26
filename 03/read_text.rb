# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

filename = File.expand_path('../text.txt', __FILE__);

require 'file_reader'

reader = FileReader.new(filename)
reader2 = FileReader.new(filename)

# puts $0,$:,$$

puts FileReader::PI,FileReader::get_instance_count

# reader.readfile1(filename)
# reader.readfile2 filename
# reader.readfile3 filename
reader.readfile4 filename
