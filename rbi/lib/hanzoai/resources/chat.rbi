# typed: strong

module Hanzoai
  module Resources
    class Chat
      sig { returns(Hanzoai::Resources::Chat::Completions) }
      attr_reader :completions

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
