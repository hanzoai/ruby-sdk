# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Engines::ChatTest < HanzoAI::Test::ResourceTest
  def test_complete
    response = @hanzo.engines.chat.complete("model")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
