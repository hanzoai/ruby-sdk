# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::DeleteTest < Hanzoai::Test::ResourceTest
  def test_create_allowed_ip_required_params
    response = @hanzo.delete.create_allowed_ip(ip: "ip")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
