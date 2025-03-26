# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Config::PassThroughEndpointTest < HanzoAI::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.config.pass_through_endpoint.create(headers: {}, path: "path", target: "target")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.config.pass_through_endpoint.update("endpoint_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.config.pass_through_endpoint.list

    assert_pattern do
      response => HanzoAI::Models::Config::PassThroughEndpointResponse
    end

    assert_pattern do
      response => {
        endpoints: ^(HanzoAI::ArrayOf[HanzoAI::Models::Config::PassThroughGenericEndpoint])
      }
    end
  end

  def test_delete_required_params
    response = @hanzo.config.pass_through_endpoint.delete(endpoint_id: "endpoint_id")

    assert_pattern do
      response => HanzoAI::Models::Config::PassThroughEndpointResponse
    end

    assert_pattern do
      response => {
        endpoints: ^(HanzoAI::ArrayOf[HanzoAI::Models::Config::PassThroughGenericEndpoint])
      }
    end
  end
end
