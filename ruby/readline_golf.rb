require "readline"
def question prompt, valid = []
  puts prompt
  while input = Readline.readline("#{"(#{valid.join ', '})" unless valid.empty?}: ", true)
    return input if valid.empty? || valid.include?(input)
    puts %("#{input}" is not a valid answer)
  end
end

question "foo", %w(bar baz)