# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::EmbeddingsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.embeddings.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
