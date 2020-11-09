class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
  end

  def add_post(post)
    Post.all << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    Post.all << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

  def posts
    Post.all
  end

end
