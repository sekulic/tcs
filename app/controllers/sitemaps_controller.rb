class SitemapsController < ApplicationController
  def show
    redirect_to "http://sitemap-gtku.s3.amazonaws.com/sitemaps/sitemap.xml.gz"
  end
end
