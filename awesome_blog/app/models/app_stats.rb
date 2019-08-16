class AppStats
  attr_reader :posts, :quotes

  def initialize
    @posts = Post.all
    @quotes = Quote.all
  end
  def posts_count
    posts.count
  end
  def quotes_count
    quotes.count
  end
  def posts_word_count
    posts.reduce(0) {|sum, post| sum + post.word_count}
  end
  def quotes_word_count
    quotes.reduce(0) {|sum, quote| sum + quote.word_count}
  end
  def total_count
    posts_count + quotes_count
  end
  def total_word_count
    posts_word_count + quotes_word_count
  end
  # 1. `posts_count`: returns the number of posts
  # 2. `quotes_count`: returns the number of quotes
  # 3. `posts_word_count`: returns the word count of all posts in one sum
  # 4. `quotes_word_count`: returns the word count of all quotes in one sum
  # 5. `total_count`: returs the total of all posts and quotes in one sum
  # 6. `total_word_count`: returns the total of all words in posts and quotes in one sum
end