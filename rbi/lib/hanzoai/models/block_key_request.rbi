# typed: strong

module Hanzoai
  module Models
    class BlockKeyRequest < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :key

      sig { params(key: String).returns(T.attached_class) }
      def self.new(key:)
      end

      sig { override.returns({key: String}) }
      def to_hash
      end
    end
  end
end
