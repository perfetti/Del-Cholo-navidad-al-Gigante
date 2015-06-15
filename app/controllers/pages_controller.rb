class PagesController < ApplicationController
  def perfiles
  end

  def blog
    @posts = Post.all
  end

  def propuestas
  end

  def donar
  end

  def recursos
  end
end
