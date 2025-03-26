# typed: strong

module Hanzoai
  module Models
    class ModelListParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :return_wildcard_routes

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig do
        params(
          return_wildcard_routes: T.nilable(T::Boolean),
          team_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(return_wildcard_routes: nil, team_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              return_wildcard_routes: T.nilable(T::Boolean),
              team_id: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
