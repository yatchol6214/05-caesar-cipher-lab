def caesar_encode(string,offset)
 result = []

 string.split('').map do |c|
  offset.times.map{ |i| c= increment_char(c) }
   result << c
 end
 result.join
end

def increment_char(char)
 return 'a' if char == 'z'
 return 'A' if char == 'Z'
 return ' ' if char == ' '
 return char if char =='*'||char =='&'||char =='^'||char =='.'
 char.ord.next.chr
end

def reverse(char)
 return 'a' if char == 'z'
 return 'A' if char == 'Z'
 return ' ' if char == ' '
 return char if char =='*'||char =='&'||char =='^'||char =='.'
 char.ord.next.chr
 (char.ord-1).chr
end



def caesar_decode(string,offset)
 backward_result = []

 string.split('').map do |c|
  offset.times.map{ |i| c= reverse(c) }
   backward_result << c
 end
 backward_result.join
end