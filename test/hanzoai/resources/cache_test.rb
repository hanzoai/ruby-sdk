# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::CacheTest < Hanzoai::Test::ResourceTest
  def test_delete
    response = @hanzo.cache.delete

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_flush_all
    response = @hanzo.cache.flush_all

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_ping
    response = @hanzo.cache.ping

    assert_pattern do
      response => Hanzoai::Models::CachePingResponse
    end

    assert_pattern do
      response => {
        cache_type: String,
        status: String,
        health_check_cache_params: Hanzoai::Unknown | nil,
        llm_cache_params: String | nil,
        ping_response: Hanzoai::BooleanModel | nil,
        set_cache_response: String | nil
      }
    end
  end
end
