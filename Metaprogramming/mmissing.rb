require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  def method_missing(method_name, *arguments, &block) # the * is called a splat, take all arguments
    if method_name.to_s =~ /author_(.*)/ # .* in regex means can be anything
      author.send($1, *arguments, &block)
    else
      super
    end
  end
end

author = Author.new
author.first_name = "Cal"
author.last_name = "Newport"
author.genre = "Computer Science"

p author.author_genre
p author.respond_to?(:author_genre)
