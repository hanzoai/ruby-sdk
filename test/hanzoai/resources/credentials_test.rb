# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::CredentialsTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.credentials.create(credential_info: {}, credential_name: "credential_name")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.credentials.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.credentials.delete("credential_name")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
