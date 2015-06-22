class PagesController < ApplicationController
  def perfiles
  end

  def blog
    @posts = Post.all
    @adminuser = AdminUser.all
    @assets = Asset.all
  end

  def propuestas
  end

  def media
    
  end

  def recursos
  end

    def unite
  end
end
