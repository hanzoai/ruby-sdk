# typed: strong

module Hanzoai
  module Models
    class BatchListParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after

      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :provider

      sig do
        params(
          after: T.nilable(String),
          limit: T.nilable(Integer),
          provider: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, limit: nil, provider: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              after: T.nilable(String),
              limit: T.nilable(Integer),
              provider: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
