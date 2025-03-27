# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::OpenAI::DeploymentsTest < Hanzoai::Test::ResourceTest
  def test_complete
    response = @hanzo.openai.deployments.complete("model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_embed
    response = @hanzo.openai.deployments.embed("model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
