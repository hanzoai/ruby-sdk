# typed: strong

module Hanzoai
  module Models
    class FileCreateParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.any(IO, StringIO)) }
      attr_accessor :file

      sig { returns(String) }
      attr_accessor :purpose

      sig { returns(T.nilable(String)) }
      attr_reader :custom_llm_provider

      sig { params(custom_llm_provider: String).void }
      attr_writer :custom_llm_provider

      sig do
        params(
          file: T.any(IO, StringIO),
          purpose: String,
          custom_llm_provider: String,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(file:, purpose:, custom_llm_provider: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              file: T.any(IO, StringIO),
              purpose: String,
              custom_llm_provider: String,
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
