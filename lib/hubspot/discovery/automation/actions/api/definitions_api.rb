require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class DefinitionsApi
          def api_methods
            %i[
              archive
              create
              get_by_id
              get_page
              update
            ].freeze
          end
        
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
