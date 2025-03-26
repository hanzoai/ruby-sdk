# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::CohereTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.cohere.create("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.cohere.retrieve("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.cohere.update("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.cohere.delete("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_modify
    response = @hanzo.cohere.modify("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
