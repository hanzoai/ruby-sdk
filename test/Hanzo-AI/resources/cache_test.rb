# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::CacheTest < HanzoAI::Test::ResourceTest
  def test_delete
    response = @hanzo.cache.delete

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_flush_all
    response = @hanzo.cache.flush_all

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_ping
    response = @hanzo.cache.ping

    assert_pattern do
      response => HanzoAI::Models::CachePingResponse
    end

    assert_pattern do
      response => {
        cache_type: String,
        status: String,
        health_check_cache_params: HanzoAI::Unknown | nil,
        llm_cache_params: String | nil,
        ping_response: HanzoAI::BooleanModel | nil,
        set_cache_response: String | nil
      }
    end
  end
end
