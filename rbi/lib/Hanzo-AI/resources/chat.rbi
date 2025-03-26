# typed: strong

module HanzoAI
  module Resources
    class Chat
      sig { returns(HanzoAI::Resources::Chat::Completions) }
      attr_reader :completions

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
