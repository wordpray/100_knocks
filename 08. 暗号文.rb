def cipher(str,option)
    ans = []
    case option
    when "encode" 
        str.each_char{ |c| c = 219 - c.codepoints.join.to_i if /[a-z]/.match(c); ans << c }
    when "decode" 
        dec_targets = []
        str.each_char { |c| dec_targets << c if /[\d]/.match(c) }
        dec_targets = dec_targets.join.scan(/.{1,3}/).map{ |n| (219 - n.to_i) }.pack("U*").split("")
        ans = str.gsub(/\d{3}/,"@").split("")
        ans.length.times { |i| ans[i] = dec_targets.shift if ans[i] == "@" }
    end
    ans.join
end

p cipher("ABCabcABCabc","encode")
p cipher("ABC122121120ABC122121120","decode")
