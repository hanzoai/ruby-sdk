# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::CompletionsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.completions.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
