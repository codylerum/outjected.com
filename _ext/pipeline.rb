require 'util_helper'
require 'blogs_map'

Awestruct::Extensions::Pipeline.new do
  helper Awestruct::Extensions::GoogleAnalytics
  helper UtilHelper
  extension Awestruct::Extensions::Disqus.new()
  extension Awestruct::Extensions::Posts.new( '/blog', :blogs )
  extension Awestruct::Extensions::Atomizer.new( :blogs, '/blog/feed.atom', :feed_title=>'Outjected Blog', :content_url=> "/blog.html" )
  extension BlogsMap.new
  extension Awestruct::Extensions::Sitemap.new()
end

