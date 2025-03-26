# typed: strong

module HanzoAI
  module Models
    class BlockUsers < HanzoAI::BaseModel
      sig { returns(T::Array[String]) }
      attr_accessor :user_ids

      sig { params(user_ids: T::Array[String]).returns(T.attached_class) }
      def self.new(user_ids:)
      end

      sig { override.returns({user_ids: T::Array[String]}) }
      def to_hash
      end
    end
  end
end
