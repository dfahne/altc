module Jekyll
  class SpoofTag < Liquid::Tag
    @text = ''
    @link = ''
    @base = ''

    def initialize(tag_name, markup, tokens)
      if markup =~ /(.+)(\s+(https?:\S+))/i
        @text = $1
        @link = $3
        @base = "/external/"
      end
      super
    end

    def render(context)
      output = super
      '<a href="/external/" onmousedown="this.href=\''+@link+'\';" rel="nofollow" target="_blank">'+@text+'</a>'
    end
  end
end

Liquid::Template.register_tag('spoof', Jekyll::SpoofTag)
