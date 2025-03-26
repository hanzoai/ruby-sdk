# typed: strong

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointResponse < HanzoAI::BaseModel
        sig { returns(T::Array[HanzoAI::Models::Config::PassThroughGenericEndpoint]) }
        attr_accessor :endpoints

        sig do
          params(
            endpoints: T::Array[T.any(HanzoAI::Models::Config::PassThroughGenericEndpoint, HanzoAI::Util::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(endpoints:)
        end

        sig { override.returns({endpoints: T::Array[HanzoAI::Models::Config::PassThroughGenericEndpoint]}) }
        def to_hash
        end
      end
    end
  end
end
