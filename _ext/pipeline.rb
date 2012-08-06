require 'util_helper'
require 'blogs_map'

Awestruct::Extensions::Pipeline.new do
  helper Awestruct::Extensions::GoogleAnalytics
  helper UtilHelper
  extension Awestruct::Extensions::Disqus.new()
  extension Awestruct::Extensions::Posts.new( '/blog', :blogs )
  extension BlogsMap.new
  extension Awestruct::Extensions::Paginator.new( :blogs, '/index', :per_page=>5 )
  extension Awestruct::Extensions::Tagger.new( :blogs, '/index', '/blog/tags', :per_page=>5 )
  extension Awestruct::Extensions::TagCloud.new( :blogs, '/blog/tags/index.xhtml' )
  extension Awestruct::Extensions::Atomizer.new( :blogs, '/blog/feed.atom', :feed_title=>'Outjected Blog', :content_url=> "/blog.html" )
  extension Awestruct::Extensions::Sitemap.new()
end

