# DevCamp - 1st mo 4th week tuesday

# VIDEO 055

# string = "The quick 12 brown foxes jumped over 10 lazy dogs"

# p string =~ /o/
# p string =~/quick/
# p string =~ /Z/ ? "Valid" : "Invalid"
# p string.to_enum(:scan, /\d+/).map {Regexp.last_match}


# VIDEO 056

# VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

# def is_valid_email? email
#   email =~ VALID_EMAIL_REGEX
# end

# p is_valid_email?("jordan@hudgens.com") ? "Valid" : "Invalid"  
# p is_valid_email?("jordanhudgens.com") ? "Valid" : "Invalid"
# p is_valid_email?("jordan.h@hudgens.com") ? "Valid" : "Invalid"
# p is_valid_email?("jordan@hudgens") ? "Valid" : "Invalid"

# p is_valid_email?("jordan_h@hudgens.net") ? "Valid" : "Invalid"


# VIDEO 057

#This regular expression will take all valid IP address values, which range from 172.16.0.0 to 172.31.255.255.

IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

^ - start of line
() - Capture everything enclosed
? - makes the preceding(comes before) token in the regular expressions optional.


def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address? ("999.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.31.255.255") ? "Valid" : "Invalid"
p is_valid_ip_address? ("172.31.255.256") ? "Valid" : "Invalid"