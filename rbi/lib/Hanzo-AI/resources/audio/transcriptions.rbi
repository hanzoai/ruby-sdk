# typed: strong

module HanzoAI
  module Resources
    class Audio
      class Transcriptions
        # Same params as:
        #
        #   https://platform.openai.com/docs/api-reference/audio/createTranscription?lang=curl
        sig do
          params(
            file: T.any(IO, StringIO),
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def create(file:, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
