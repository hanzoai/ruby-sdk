# typed: strong

module Hanzoai
  module Models
    class BatchListWithProviderParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after

      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      sig do
        params(
          after: T.nilable(String),
          limit: T.nilable(Integer),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, limit: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     after: T.nilable(String),
                     limit: T.nilable(Integer),
                     request_options: Hanzoai::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
