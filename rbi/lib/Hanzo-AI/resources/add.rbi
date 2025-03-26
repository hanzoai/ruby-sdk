# typed: strong

module HanzoAI
  module Resources
    class Add
      # Add Allowed Ip
      sig do
        params(ip: String, request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def add_allowed_ip(ip:, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
