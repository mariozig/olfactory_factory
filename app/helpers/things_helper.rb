module ThingsHelper

  def page_header(title, small="")
    title = title.capitalize
    small = " <small>#{small}</small>" unless small.empty?

    "<div class=\"page-header\"><h1>#{title}#{small}</h1></div>".html_safe
  end

end