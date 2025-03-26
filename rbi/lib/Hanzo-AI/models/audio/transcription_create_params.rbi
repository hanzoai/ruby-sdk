# typed: strong

module HanzoAI
  module Models
    module Audio
      class TranscriptionCreateParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(T.any(IO, StringIO)) }
        attr_accessor :file

        sig do
          params(
            file: T.any(IO, StringIO),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(file:, request_options: {})
        end

        sig { override.returns({file: T.any(IO, StringIO), request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
