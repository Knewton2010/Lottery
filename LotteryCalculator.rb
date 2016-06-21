lines = []

file = File.open("./pick3.csv", "r")

myArray = []
while (line = file.gets)
	arr = line.split(',')
	myArray.push({ 
		title: arr[0],
		month: arr[1],
		day: arr[2],
		year: arr[3],
		draw1: arr[4],
		draw2: arr[5],
		draw3: arr[6],
		sum: arr[7]})
end

	#lines << line
#end

file.close
puts "Date to calculate (mm,dd,yyyy)"
myDate = gets.chomp

puts myDate
puts myArray.index {|myArray| 
	myArray[:month] == "4" && 
	myArray[:day] == "8" && 
	myArray[:year] == "2016"}
#myMap = myArray.map { |myArray| myArray[:sum.chomp.chomp]}
#lines.each { |l| puts l}

#puts myArray.inspect
#puts myMap.inspect

