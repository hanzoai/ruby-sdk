# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::TestTest < Hanzoai::Test::ResourceTest
  def test_ping
    response = @hanzo.test.ping

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
