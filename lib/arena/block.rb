require 'arena/base'
require 'arena/entity'
require 'arena/entities/source'
require 'arena/entities/image'
require 'arena/creatable'

module Arena
  class Block < Arena::Base
    include Arena::Creatable

    attr_reader :id, :title, :generated_title, :state, :comment_count,
    :content, :content_html, :description, :description_html, :position

    def user
      @user ||= Arena::User.new(@attrs.dup['user'])
    end

    def _class
      @_class ||= @attrs.dup['class']
    end

    def _base_class
      @_base_class ||= @attrs.dup['base_class']
    end

    def source
      @source ||= Arena::Entity::Source.new(@attrs.dup['source'])
    end

    def image
      @image ||= Arena::Entity::Image.new(@attrs.dup['image'])
    end

    def connections
      # todo
    end

  end

  class Text < Block; end
  class Image < Block; end
  class Link < Block; end
  class Embed < Block; end
  class Attachment < Block; end
end