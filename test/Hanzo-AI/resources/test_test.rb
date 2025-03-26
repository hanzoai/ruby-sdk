# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::TestTest < HanzoAI::Test::ResourceTest
  def test_ping
    response = @hanzo.test.ping

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
