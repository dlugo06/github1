#ritz!
def quick_fox
end

def lazy_dog
end

def daisy_log
end

class NilClass
  def jumped_over(e,v)
  end
end

quick_fox.jumped_over(lazy_dog, daisy_log)

#pyramid hard!
height = ARGV[0].to_i
output = ""
height.times do |i|
  output << (" ") * (height - i - 1) + "*"
  output << "*"
  output << ("*" * i)*2
  output << "\n"
end
puts output


#cats expert!
cats = Array.new(100, 1)

pass = (1..100).to_a #an array of integers from 1 to 100

cats.each_with_index do |item, index|
  cat_number = index + 1
  pass.each do |divisor|
    if cat_number % divisor == 0
      if cats[index] == 1
        cats[index] = 0
      else
        cats[index] = 1
      end
    end
  end
  puts "Cat number #{cat_number} is not wearing a hat" if cats[index] == 0
end
