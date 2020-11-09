class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts =[]
  end

  def add_post(post)
    @post = post
    @posts << self
    @@post_count += 1
    post.author = self

end
