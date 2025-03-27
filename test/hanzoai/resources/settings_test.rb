# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::SettingsTest < Hanzoai::Test::ResourceTest
  def test_retrieve
    response = @hanzo.settings.retrieve

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
