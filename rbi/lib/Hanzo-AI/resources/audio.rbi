# typed: strong

module HanzoAI
  module Resources
    class Audio
      sig { returns(HanzoAI::Resources::Audio::Speech) }
      attr_reader :speech

      sig { returns(HanzoAI::Resources::Audio::Transcriptions) }
      attr_reader :transcriptions

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
