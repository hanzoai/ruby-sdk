# frozen_string_literal: true

require_relative "../../../test_helper"

class HanzoAI::Test::Resources::OpenAI::Deployments::ChatTest < HanzoAI::Test::ResourceTest
  def test_complete
    response = @hanzo.openai.deployments.chat.complete("model")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
