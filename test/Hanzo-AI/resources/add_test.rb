# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::AddTest < HanzoAI::Test::ResourceTest
  def test_add_allowed_ip_required_params
    response = @hanzo.add.add_allowed_ip(ip: "ip")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
