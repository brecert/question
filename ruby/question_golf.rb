def question prompt, valid = []
  choices = "\n(#{valid.join ', '})" unless valid.empty?
  loop do
    print prompt, choices, ": "
    input = gets.chomp
    return input if valid.empty? || valid.include?(input)
    puts %("#{input}" is not a valid answer)
  end
end

question "foo", %w(bar baz)