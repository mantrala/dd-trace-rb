module Datadog
  module Transport
    # Data transfer object for generic data
    module Parcel
      attr_reader \
        :data

      def initialize(data)
        @data = data
      end

      def encode_with(encoder)
        encoder.encode(data)
      end
    end
  end
end
