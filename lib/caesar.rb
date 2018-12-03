def caesar_encode(string,offset)
 result = []

 string.split('').map do |letter|
  offset.times.map{ |i| letter= wrap_aroundnexclude(letter) }
   result << letter
 end
 result.join
end

def caesar_decode(string,offset)
 backward_result = []

 string.split('').map do |letter|
  offset.times.map{ |i| letter= reverse(letter) }
   backward_result << letter
 end
 backward_result.join
end

def wrap_aroundnexclude(char)
 return 'a' if char == 'z'
 return 'A' if char == 'Z'
 return ' ' if char == ' '
#  return char if char =='*'||char =='&'||char =='^'||char =='.'
 char.ord.next.chr.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, char)
end

def reverse(char)
 return 'z' if char == 'a'
 return 'Z' if char == 'A'
 return ' ' if char == ' '
 char == char.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '!') ? (char.ord-1).chr : char
 #Google:Ruby previous letter ->https://stackoverflow.com/questions/20413391/next-and-previous-for-letters-and-symbols-array
end


  
