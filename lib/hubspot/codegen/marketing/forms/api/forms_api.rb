=begin
#FormsExternalService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Forms
      class FormsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive a form definition
        # Archive a form definition. New submissions will not be accepted and the form definition will be permanently deleted after 3 months.
        # @param form_id [String] The ID of the form to archive.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(form_id, opts = {})
          archive_with_http_info(form_id, opts)
          nil
        end

        # Archive a form definition
        # Archive a form definition. New submissions will not be accepted and the form definition will be permanently deleted after 3 months.
        # @param form_id [String] The ID of the form to archive.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(form_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.archive ...'
          end
          # verify the required parameter 'form_id' is set
          if @api_client.config.client_side_validation && form_id.nil?
            fail ArgumentError, "Missing the required parameter 'form_id' when calling FormsApi.archive"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/{formId}'.sub('{' + 'formId' + '}', CGI.escape(form_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a form
        # Add a new `hubspot` form
        # @param form_definition_create_request_base [FormDefinitionCreateRequestBase] 
        # @param [Hash] opts the optional parameters
        # @return [FormDefinitionBase]
        def create(form_definition_create_request_base, opts = {})
          data, _status_code, _headers = create_with_http_info(form_definition_create_request_base, opts)
          data
        end

        # Create a form
        # Add a new &#x60;hubspot&#x60; form
        # @param form_definition_create_request_base [FormDefinitionCreateRequestBase] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(FormDefinitionBase, Integer, Hash)>] FormDefinitionBase data, response status code and response headers
        def create_with_http_info(form_definition_create_request_base, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.create ...'
          end
          # verify the required parameter 'form_definition_create_request_base' is set
          if @api_client.config.client_side_validation && form_definition_create_request_base.nil?
            fail ArgumentError, "Missing the required parameter 'form_definition_create_request_base' when calling FormsApi.create"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(form_definition_create_request_base)

          # return_type
          return_type = opts[:debug_return_type] || 'FormDefinitionBase'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get a form definition
        # Returns a form based on the form ID provided.
        # @param form_id [String] The unique identifier of the form
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [FormDefinitionBase]
        def get_by_id(form_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(form_id, opts)
          data
        end

        # Get a form definition
        # Returns a form based on the form ID provided.
        # @param form_id [String] The unique identifier of the form
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(FormDefinitionBase, Integer, Hash)>] FormDefinitionBase data, response status code and response headers
        def get_by_id_with_http_info(form_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.get_by_id ...'
          end
          # verify the required parameter 'form_id' is set
          if @api_client.config.client_side_validation && form_id.nil?
            fail ArgumentError, "Missing the required parameter 'form_id' when calling FormsApi.get_by_id"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/{formId}'.sub('{' + 'formId' + '}', CGI.escape(form_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'FormDefinitionBase'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get a list of forms
        # Returns a list of forms based on the search filters. By default, it returns the first 20 `hubspot` forms
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @option opts [Array<String>] :form_types The form types to be included in the results.
        # @return [CollectionResponseFormDefinitionBaseForwardPaging]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # Get a list of forms
        # Returns a list of forms based on the search filters. By default, it returns the first 20 &#x60;hubspot&#x60; forms
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @option opts [Array<String>] :form_types The form types to be included in the results.
        # @return [Array<(CollectionResponseFormDefinitionBaseForwardPaging, Integer, Hash)>] CollectionResponseFormDefinitionBaseForwardPaging data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.get_page ...'
          end
          allowable_values = ["hubspot", "captured", "flow", "blog_comment", "all"]
          if @api_client.config.client_side_validation && opts[:'form_types'] && !opts[:'form_types'].all? { |item| allowable_values.include?(item) }
            fail ArgumentError, "invalid value for \"form_types\", must include one of #{allowable_values}"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?
          query_params[:'formTypes'] = @api_client.build_collection_param(opts[:'form_types'], :multi) if !opts[:'form_types'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseFormDefinitionBaseForwardPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.get_page",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a form definition
        # Update all fields of a hubspot form definition.
        # @param form_id [String] 
        # @param hub_spot_form_definition [HubSpotFormDefinition] 
        # @param [Hash] opts the optional parameters
        # @return [FormDefinitionBase]
        def replace(form_id, hub_spot_form_definition, opts = {})
          data, _status_code, _headers = replace_with_http_info(form_id, hub_spot_form_definition, opts)
          data
        end

        # Update a form definition
        # Update all fields of a hubspot form definition.
        # @param form_id [String] 
        # @param hub_spot_form_definition [HubSpotFormDefinition] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(FormDefinitionBase, Integer, Hash)>] FormDefinitionBase data, response status code and response headers
        def replace_with_http_info(form_id, hub_spot_form_definition, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.replace ...'
          end
          # verify the required parameter 'form_id' is set
          if @api_client.config.client_side_validation && form_id.nil?
            fail ArgumentError, "Missing the required parameter 'form_id' when calling FormsApi.replace"
          end
          # verify the required parameter 'hub_spot_form_definition' is set
          if @api_client.config.client_side_validation && hub_spot_form_definition.nil?
            fail ArgumentError, "Missing the required parameter 'hub_spot_form_definition' when calling FormsApi.replace"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/{formId}'.sub('{' + 'formId' + '}', CGI.escape(form_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(hub_spot_form_definition)

          # return_type
          return_type = opts[:debug_return_type] || 'FormDefinitionBase'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.replace",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Partially update a form definition
        # Update some of the form definition components
        # @param form_id [String] The ID of the form to update.
        # @param hub_spot_form_definition_patch_request [HubSpotFormDefinitionPatchRequest] 
        # @param [Hash] opts the optional parameters
        # @return [FormDefinitionBase]
        def update(form_id, hub_spot_form_definition_patch_request, opts = {})
          data, _status_code, _headers = update_with_http_info(form_id, hub_spot_form_definition_patch_request, opts)
          data
        end

        # Partially update a form definition
        # Update some of the form definition components
        # @param form_id [String] The ID of the form to update.
        # @param hub_spot_form_definition_patch_request [HubSpotFormDefinitionPatchRequest] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(FormDefinitionBase, Integer, Hash)>] FormDefinitionBase data, response status code and response headers
        def update_with_http_info(form_id, hub_spot_form_definition_patch_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FormsApi.update ...'
          end
          # verify the required parameter 'form_id' is set
          if @api_client.config.client_side_validation && form_id.nil?
            fail ArgumentError, "Missing the required parameter 'form_id' when calling FormsApi.update"
          end
          # verify the required parameter 'hub_spot_form_definition_patch_request' is set
          if @api_client.config.client_side_validation && hub_spot_form_definition_patch_request.nil?
            fail ArgumentError, "Missing the required parameter 'hub_spot_form_definition_patch_request' when calling FormsApi.update"
          end
          # resource path
          local_var_path = '/marketing/v3/forms/{formId}'.sub('{' + 'formId' + '}', CGI.escape(form_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(hub_spot_form_definition_patch_request)

          # return_type
          return_type = opts[:debug_return_type] || 'FormDefinitionBase'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"FormsApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: FormsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
