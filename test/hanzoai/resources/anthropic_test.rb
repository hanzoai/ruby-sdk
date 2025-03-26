# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::AnthropicTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.anthropic.create("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.anthropic.retrieve("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update
    response = @hanzo.anthropic.update("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.anthropic.delete("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_modify
    response = @hanzo.anthropic.modify("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
