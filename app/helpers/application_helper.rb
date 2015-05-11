module ApplicationHelper
  def markdown(content)
    options = {
      autolink: true, 
      space_after_headers: true, 
      fenced_code_blocks: true,
      underline: true,
      highlight: true,
      footnotes: true,
      tables: true
    }

    @markdown ||= Redcarpet::Markdown.new(BlogMarkdownRenderer, options)
    @markdown.render(content)
  end
end
