module ApplicationHelper
	def markdown(text)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, hard_wrap: :true, filter_html: :true, autolink: :true, no_intraemphasis: :true, fenced_code: :true, gh_blockcode: :true)
  
  return markdown.render(text).html_safe
end
end
