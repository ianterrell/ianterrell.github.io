class CodeLinkTag < Liquid::Tag
  def initialize(tag_name, input, parse_context)
    super
    @lang, @text, @link = input.split(' ')
  end

  def render(_context)
    <<-HTML
      <span><a href="#{@link}" target="_blank" rel="noopener noreferrer">#{@text}</a> (#{@lang})</span>
    HTML
  end
end

Liquid::Template.register_tag('code_link', CodeLinkTag)
