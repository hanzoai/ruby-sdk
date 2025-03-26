# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Chat::CompletionsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.chat.completions.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
