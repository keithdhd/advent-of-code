require 'pry-byebug'
original = {'b'=>['a'], 'c'=>['b']}
#{'b'=>['a'], 'c'=>['b']}
#{b=>['a'], c =>['b','a']}

final = {}
original.each do |key, value|
  final[key] = original[key]
  index = value.first
  final[key] = final[key] + original[index] if original[index]
end



  # final['b'] = original['b'] #['a']
  # final['b'] = final['b'] + original['a'] if original['a'] #guard if nil

  # final['c'] = original['c'] #['b']
  # final['c'] = final['c'] + original['b'] if original['b'] #['b', 'a']

puts original
puts final