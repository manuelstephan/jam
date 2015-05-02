filename = "jam.sto"

fp = Dir.pwd + "/" + filename
puts 	"Path to file:",fp

f = File.open(fp,"r")
input = f.read
f.close
puts input 

input = input.split "\n"
n = input[0]

puts "number of testcases is #{n}"


input = input[1..input.length-1]


cntr = 0
additional = Array.new(n.to_i)
input.each do |line|
	additional[cntr] = 0
	line = line.split " "
	line = line[1]
	standing = 0
	
	for i in 0..line.length-1 do
		if standing < i
			additional[cntr] += i-standing
			standing += i-standing
		end 
	standing += line[i].to_i
	end 
	cntr += 1
end 

puts additional

f = File.open(Dir.pwd+"/solution.txt","w")
cnt = 1
additional.each do |line|
f.puts "Case ##{cnt}: #{line}"
cnt+=1
end 
f.close
