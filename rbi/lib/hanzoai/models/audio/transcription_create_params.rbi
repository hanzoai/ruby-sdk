# typed: strong

module Hanzoai
  module Models
    module Audio
      class TranscriptionCreateParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(T.any(IO, StringIO)) }
        attr_accessor :file

        sig do
          params(
            file: T.any(IO, StringIO),
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(file:, request_options: {})
        end

        sig { override.returns({file: T.any(IO, StringIO), request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
