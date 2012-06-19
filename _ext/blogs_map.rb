class BlogsMap
  def execute(site)
    years = {}
    site.blogs.each do |blog|
      year = blog.date.year
      if (! years.key?(year) )
        years[year] = {}
      end
      months = years[year]
      month = blog.date.month
      if (! months.key?(month) )
        months[month] = []
      end
      blogs = months[month]
      blogs << blog
    end
    site.blog_map = years
  end
end