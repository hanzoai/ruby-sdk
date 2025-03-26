# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::GuardrailsTest < Hanzoai::Test::ResourceTest
  def test_list
    response = @hanzo.guardrails.list

    assert_pattern do
      response => Hanzoai::Models::GuardrailListResponse
    end

    assert_pattern do
      response => {
        guardrails: ^(Hanzoai::ArrayOf[Hanzoai::Models::GuardrailListResponse::Guardrail])
      }
    end
  end
end
