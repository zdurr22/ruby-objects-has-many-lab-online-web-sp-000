class Author
  attr_accessor :name, :posts


  def initialize(name)
    @name = name
  end

  def add_post(post)
    Post.all << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    Post.all << post
    post.author = self
  end

  def self.post_count
    Post.all.uniq.count
  end

  def posts
    Post.all
  end

end
