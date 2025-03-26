# typed: strong

module HanzoAI
  module Resources
    class Organization
      class Info
        # Get the org specific information
        sig do
          params(
            organization_id: String,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(HanzoAI::Models::Organization::InfoRetrieveResponse)
        end
        def retrieve(organization_id:, request_options: {})
        end

        # DEPRECATED: Use GET /organization/info instead
        sig do
          params(
            organizations: T::Array[String],
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def deprecated(organizations:, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
