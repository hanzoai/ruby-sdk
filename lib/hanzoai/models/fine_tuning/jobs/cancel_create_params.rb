# frozen_string_literal: true

module Hanzoai
  module Models
    module FineTuning
      module Jobs
        class CancelCreateParams < Hanzoai::BaseModel
          # @!parse
          #   extend Hanzoai::RequestParameters::Converter
          include Hanzoai::RequestParameters

          # @!parse
          #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(request_options: {}, **) = super

          # def initialize: (Hash | Hanzoai::BaseModel) -> void
        end
      end
    end
  end
end
