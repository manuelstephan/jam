filename = "magic.in"
fp = Dir.pwd + "/" + filename
puts 	"Path to file:",fp
f = File.open(fp,"r")
input = f.read
f.close
puts input 

input = input.split "\n"
n = input[0].to_i

puts "number of testcases is #{n}"
f = File.open(Dir.pwd+"/solution.txt","w")

cr = 1 # current row 
for i in 0..n-1 do 
roi1 = input[input[cr].to_i+cr].split(" ")
roi2 = input[input[cr+5].to_i+cr+5].split(" ")
cr += 10
ec = 0
roi1.each do |e1|
	if roi2.include?(e1)
		@eoi = e1
		ec += 1
	end 
end 

case ec 
	when 0
		f.puts "Case ##{i+1}: Volunteer cheated!"
	when 1
		f.puts "Case ##{i+1}: #{@eoi}"
	else 
		f.puts "Case ##{i+1}: Bad magician!"
	end 
end
f.close

