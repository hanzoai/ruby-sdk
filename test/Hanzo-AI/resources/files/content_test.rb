# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Files::ContentTest < HanzoAI::Test::ResourceTest
  def test_retrieve_required_params
    response = @hanzo.files.content.retrieve("file_id", provider: "provider")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
