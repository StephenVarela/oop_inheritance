require './multilinguist.rb'
class Quote_Collector < Multilinguist

  def initialize
    super()
    @quotes = []
  end

  def learn_quote(my_quote)
    @quotes << my_quote
  end

  def say_random
    puts say_in_local_language(@quotes[rand(0...@quotes.size)])
  end
end

list_of_quotes = [
  'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.',
  'It is during our darkest moments that we must focus to see the light.',
  'Find a place inside where there\'s joy, and the joy will burn out the pain.',
  'Don\'t judge each day by the harvest you reap but by the seeds that you plant.',
  'The only thing necessary for the triumph of evil is for good men to do nothing.',
  'Where there is love there is life.',
  'Do all things with love.',
  'In three words I can sum up everything I\'ve learned about life: it goes on.'
]

me = Quote_Collector.new


me.learn_quote(list_of_quotes[0])
me.say_random
me.travel_to("India")
me.say_random
me.learn_quote(list_of_quotes[1])
me.travel_to("Canada")
me.say_random
me.say_random
