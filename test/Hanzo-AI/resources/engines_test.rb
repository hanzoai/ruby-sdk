# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::EnginesTest < HanzoAI::Test::ResourceTest
  def test_complete
    response = @hanzo.engines.complete("model")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_embed
    response = @hanzo.engines.embed("model")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
