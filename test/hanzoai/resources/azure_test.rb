# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::AzureTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.azure.create("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update
    response = @hanzo.azure.update("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.azure.delete("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_call
    response = @hanzo.azure.call("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_patch
    response = @hanzo.azure.patch("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
