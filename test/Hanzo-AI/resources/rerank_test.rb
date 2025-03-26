# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::RerankTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.rerank.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_create_v1
    response = @hanzo.rerank.create_v1

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_create_v2
    response = @hanzo.rerank.create_v2

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
