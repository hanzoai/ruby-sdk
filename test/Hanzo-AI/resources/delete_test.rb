# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::DeleteTest < HanzoAI::Test::ResourceTest
  def test_create_allowed_ip_required_params
    response = @hanzo.delete.create_allowed_ip(ip: "ip")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
