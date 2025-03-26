# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::SettingsTest < HanzoAI::Test::ResourceTest
  def test_retrieve
    response = @hanzo.settings.retrieve

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
