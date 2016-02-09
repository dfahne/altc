module Jekyll
  class BannerTag < Liquid::Tag
    @src = ''
    @link = ''

    def initialize(tag_name, markup, tokens)
      if markup =~ /(.+)(\s+(https?:\S+))/i
        @src = $1
        @link = $3
      end
      super
    end

    def render(context)
      output = super
      "<a class='banner' rel='nofollow' target='_blank' href='"+@link+"'>
      <img src='"+@src+"'>
      </a>"
    end
  end
end

Liquid::Template.register_tag('banner', Jekyll::BannerTag)
