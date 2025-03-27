# frozen_string_literal: true

module Hanzoai
  module Resources
    class Team
      class Model
        # Add models to a team's allowed model list. Only proxy admin or team admin can
        #   add models.
        #
        #   Parameters:
        #
        #   - team_id: str - Required. The team to add models to
        #   - models: List[str] - Required. List of models to add to the team
        #
        #   Example Request:
        #
        #   ```
        #   curl --location 'http://0.0.0.0:4000/team/model/add'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
        #       "team_id": "team-1234",
        #       "models": ["gpt-4", "claude-2"]
        #   }'
        #   ```
        #
        # @param params [Hanzoai::Models::Team::ModelAddParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :models
        #
        #   @option params [String] :team_id
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def add(params)
          parsed, options = Hanzoai::Models::Team::ModelAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: "team/model/add",
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # Remove models from a team's allowed model list. Only proxy admin or team admin
        #   can remove models.
        #
        #   Parameters:
        #
        #   - team_id: str - Required. The team to remove models from
        #   - models: List[str] - Required. List of models to remove from the team
        #
        #   Example Request:
        #
        #   ```
        #   curl --location 'http://0.0.0.0:4000/team/model/delete'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
        #       "team_id": "team-1234",
        #       "models": ["gpt-4"]
        #   }'
        #   ```
        #
        # @param params [Hanzoai::Models::Team::ModelRemoveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :models
        #
        #   @option params [String] :team_id
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def remove(params)
          parsed, options = Hanzoai::Models::Team::ModelRemoveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "team/model/delete",
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
