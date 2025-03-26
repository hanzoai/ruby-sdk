# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ActiveTest < HanzoAI::Test::ResourceTest
  def test_list_callbacks
    response = @hanzo.active.list_callbacks

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
