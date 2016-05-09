require 'json'
file = File.open(ARGV[0], 'r').read.gsub(' ', '')
counter = file.split('').count
hsh = Hash.new(0)
file.split('').each do |letter|
  hsh[letter] += 1.to_f / counter * 100
end
a = hsh.sort_by { |_k, w| w }.reverse
File.new(ARGV[1], 'w').puts a.to_json
