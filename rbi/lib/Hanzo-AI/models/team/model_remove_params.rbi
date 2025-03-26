# typed: strong

module HanzoAI
  module Models
    module Team
      class ModelRemoveParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(T::Array[String]) }
        attr_accessor :models

        sig { returns(String) }
        attr_accessor :team_id

        sig do
          params(
            models: T::Array[String],
            team_id: String,
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(models:, team_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              models: T::Array[String],
              team_id: String,
              request_options: HanzoAI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
