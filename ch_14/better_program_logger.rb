$nesting_depth = 0

def log block_description, &block
  puts '  '*$nesting_depth + 'Beginning "' + block_description + '"...'
  $nesting_depth += 1
  result = block.call
  $nesting_depth -= 1
  puts '  '*$nesting_depth + '..."' + block_description + '" finished, returning : '
  puts '  '*$nesting_depth + result.to_s

end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    40 + 2
  end

  log 'yet another block' do
    'I love Indian food!'
  end
  false
end