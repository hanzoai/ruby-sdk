# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Cache::RedisTest < Hanzoai::Test::ResourceTest
  def test_retrieve_info
    response = @hanzo.cache.redis.retrieve_info

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
