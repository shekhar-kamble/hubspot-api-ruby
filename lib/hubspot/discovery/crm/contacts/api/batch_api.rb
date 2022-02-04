require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Contacts
        class BatchApi
          def self.api_methods
            %i[
              archive
              create
              read
              update
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
