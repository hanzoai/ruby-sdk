# typed: strong

module Hanzoai
  module Resources
    class Audio
      sig { returns(Hanzoai::Resources::Audio::Speech) }
      attr_reader :speech

      sig { returns(Hanzoai::Resources::Audio::Transcriptions) }
      attr_reader :transcriptions

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
