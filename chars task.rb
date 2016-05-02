require "json"
  file = File.open("text.txt","r").read.gsub(" ", "")
counter=file.split("").count
hsh = Hash.new(0)
hshProc = Hash.new(0)
file.split("").each do |letter|
  hsh[letter]+=1.to_f/counter*100
end

a = hsh.sort_by {|k,w| w}.reverse
File.new('json_file.txt','w').puts a.to_json
