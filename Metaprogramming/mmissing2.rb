require 'ostruct'

# create dynamic methods on the fly.
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

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author_') || super # same implementation like above but on a single line.
  end
end

author = Author.new
author.first_name = "Cal"
author.last_name = "Newport"
author.genre = "Computer Science"

p author.author_genre
p author.respond_to?(:author_genre)
