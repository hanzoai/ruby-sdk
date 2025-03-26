# typed: strong

module Hanzoai
  module Models
    class CustomerDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :user_ids

      sig do
        params(
          user_ids: T::Array[String],
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(user_ids:, request_options: {})
      end

      sig { override.returns({user_ids: T::Array[String], request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
