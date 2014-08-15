module Vedeu
  module API
    class Line < Base
      def build
        attributes
      end

      def stream(&block)
        attributes[:streams] << API::Stream.build(&block)
      end

      def text(value)
        attributes[:streams] << { text: value }
      end

      def foreground(value = '', &block)
        attributes[:streams] << API::Stream.build({
                                  colour: { foreground: value }
                                }, &block)
      end

      def background(value = '', &block)
        attributes[:streams] << API::Stream.build({
                                  colour: { background: value }
                                }, &block)
      end

      def attributes
        @_attributes ||= defaults.merge!(@attributes)
      end

      def defaults
        {
          colour:  {},
          style:   [],
          streams: []
        }
      end
    end
  end
end
