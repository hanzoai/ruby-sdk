# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::LangfuseTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.langfuse.create("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.langfuse.retrieve("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update
    response = @hanzo.langfuse.update("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.langfuse.delete("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_patch
    response = @hanzo.langfuse.patch("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
