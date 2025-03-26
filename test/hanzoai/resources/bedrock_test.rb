# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::BedrockTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.bedrock.create("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.bedrock.retrieve("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update
    response = @hanzo.bedrock.update("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.bedrock.delete("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_patch
    response = @hanzo.bedrock.patch("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
