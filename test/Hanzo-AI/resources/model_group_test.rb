# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ModelGroupTest < HanzoAI::Test::ResourceTest
  def test_retrieve_info
    response = @hanzo.model_group.retrieve_info

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
