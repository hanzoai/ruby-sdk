# typed: strong

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointResponse < Hanzoai::BaseModel
        sig { returns(T::Array[Hanzoai::Models::Config::PassThroughGenericEndpoint]) }
        attr_accessor :endpoints

        sig do
          params(
            endpoints: T::Array[T.any(Hanzoai::Models::Config::PassThroughGenericEndpoint, Hanzoai::Util::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(endpoints:)
        end

        sig { override.returns({endpoints: T::Array[Hanzoai::Models::Config::PassThroughGenericEndpoint]}) }
        def to_hash
        end
      end
    end
  end
end
