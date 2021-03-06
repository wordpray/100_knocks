basic_info = Hash.new

open('jawiki-country.json', 'r') do |input|
  flag= false
  key= ''
  while line= input.gets
    line.split('\n').each do |item|
      (flag= true; next) if item.match(/基礎情報/)
      flag= false if item.match(/^}}/)
      if flag
        if item =~ /^\*/
          basic_info[key] += item
        else
          raw = item.split('=')
          key = raw[0].sub(/^\|/, '').rstrip
          basic_info[key]= raw[1].strip
        end
      end
    end
  end
end

def remove_emphasized_link(basic_info)
  basic_info_removed_emphasized_link= Hash.new
  basic_info.each do |k, v|
    basic_info_removed_emphasized_link[k] = v.gsub(/\'+/, ' ')
  end
  return basic_info_removed_emphasized_link
end

def remove_internal_link(basic_info_removed_emphasized_link)
  basic_info_removed_internal_link = Hash.new
  basic_info_removed_emphasized_link.each do |k, v|
    basic_info_removed_internal_link[k]= v.gsub(/\[+/, ' ').gsub(/\]+/, ' ')
  end
  return basic_info_removed_internal_link
end

def remove_other_link(basic_info_removed_internal_link)
  basic_info_removed_other_link = Hash.new
  basic_info_removed_internal_link.each do |k, v|
    basic_info_removed_other_link[k] = v.gsub(/\{+/, ' ').gsub(/\}+/, ' ')
  end
  return basic_info_removed_other_link
end

p "URL: http://en.wikipedia.org/wiki/File:#{remove_other_link(remove_internal_link(remove_emphasized_link(basic_info)))['国旗画像']}"
