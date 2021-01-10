require 'liquid'
require 'uri'

# Capitalize all words of the input
module Jekyll
  module AnchorRef
    def anchor_ref(url, tag)
      return url + '#' + tag
    end
  end
end

Liquid::Template.register_filter(Jekyll::AnchorRef)