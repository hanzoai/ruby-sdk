# typed: strong

module HanzoAI
  module Models
    class IPAddress < HanzoAI::BaseModel
      sig { returns(String) }
      attr_accessor :ip

      sig { params(ip: String).returns(T.attached_class) }
      def self.new(ip:)
      end

      sig { override.returns({ip: String}) }
      def to_hash
      end
    end
  end
end
