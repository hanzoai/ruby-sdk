# typed: strong

module Hanzoai
  module Models
    class SpendListTagsParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Time till which to view key spend
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # Time from which to start viewing key spend
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      sig do
        params(
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(end_date: nil, start_date: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              end_date: T.nilable(String),
              start_date: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
