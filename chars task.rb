file = File.open("text.txt","r").read
hsh = Hash.new(0)
file.split("").each do |letter|
  hsh[letter]+=1
  end
p hsh.sort_by {|k,w| w}.reverse
