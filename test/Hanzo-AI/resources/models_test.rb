# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ModelsTest < HanzoAI::Test::ResourceTest
  def test_list
    response = @hanzo.models.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
