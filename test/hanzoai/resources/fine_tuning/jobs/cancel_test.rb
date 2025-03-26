# frozen_string_literal: true

require_relative "../../../test_helper"

class Hanzoai::Test::Resources::FineTuning::Jobs::CancelTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.fine_tuning.jobs.cancel.create("fine_tuning_job_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
