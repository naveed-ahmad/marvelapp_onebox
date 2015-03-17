# name: marvelapp_onebox
# about: Marvelapp Onebox for embedding mobile prototypes in Discourse.
# version: 0.1
# authors: Naveed Ahmad

Onebox = Onebox

module Onebox
  module Engine
    class MarvelappOnebox

      include Engine

      matches_regexp /^https?:\/\/(marvelapp\.com|marvl\.in)\/(?<key>[\w-]*)/

      def to_html
        "<iframe src='https://marvelapp.com/#{@url.match(@@matcher)[:project_id]}?emb=1' width='443' height='933' allowTransparency='true' frameborder='0'></iframe>"
      rescue
        @url
      end
    end
  end
end
