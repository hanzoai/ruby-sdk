# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::HealthTest < Hanzoai::Test::ResourceTest
  def test_check_all
    response = @hanzo.health.check_all

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_check_liveliness
    response = @hanzo.health.check_liveliness

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_check_liveness
    response = @hanzo.health.check_liveness

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_check_readiness
    response = @hanzo.health.check_readiness

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_check_services_required_params
    response = @hanzo.health.check_services(service: :slack_budget_alerts)

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
