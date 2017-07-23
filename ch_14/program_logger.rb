def log block_decription, &block
  puts "Beginning \"#{block_decription}\"..."
  result = block.call
  puts "...\"#{block_decription}\" finished, returning : #{result}"
end

log 'outer block' do
  log 'some little block' do
    2 + 3
  end
  log 'yet another block' do
    'I like Thai food'
  end
  false
end