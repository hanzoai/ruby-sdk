# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::CredentialsTest < HanzoAI::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.credentials.create(credential_info: {}, credential_name: "credential_name")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.credentials.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.credentials.delete("credential_name")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
