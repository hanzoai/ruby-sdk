# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::GuardrailsTest < HanzoAI::Test::ResourceTest
  def test_list
    response = @hanzo.guardrails.list

    assert_pattern do
      response => HanzoAI::Models::GuardrailListResponse
    end

    assert_pattern do
      response => {
        guardrails: ^(HanzoAI::ArrayOf[HanzoAI::Models::GuardrailListResponse::Guardrail])
      }
    end
  end
end
