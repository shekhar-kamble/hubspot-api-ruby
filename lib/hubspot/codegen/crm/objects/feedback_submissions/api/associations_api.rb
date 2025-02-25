=begin
#Feedback Submissions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      module FeedbackSubmissions
        class AssociationsApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Delete
          # deletes all associations between two records.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param to_object_id [Integer] 
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def archive(feedback_submission_id, to_object_type, to_object_id, opts = {})
            archive_with_http_info(feedback_submission_id, to_object_type, to_object_id, opts)
            nil
          end

          # Delete
          # deletes all associations between two records.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param to_object_id [Integer] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_with_http_info(feedback_submission_id, to_object_type, to_object_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: AssociationsApi.archive ...'
            end
            # verify the required parameter 'feedback_submission_id' is set
            if @api_client.config.client_side_validation && feedback_submission_id.nil?
              fail ArgumentError, "Missing the required parameter 'feedback_submission_id' when calling AssociationsApi.archive"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.archive"
            end
            # verify the required parameter 'to_object_id' is set
            if @api_client.config.client_side_validation && to_object_id.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.archive"
            end
            # resource path
            local_var_path = '/crm/v4/objects/feedback_submissions/{feedbackSubmissionId}/associations/{toObjectType}/{toObjectId}'.sub('{' + 'feedbackSubmissionId' + '}', CGI.escape(feedback_submission_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s)).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body]

            # return_type
            return_type = opts[:debug_return_type]

            # auth_names
            auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :operation => :"AssociationsApi.archive",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: AssociationsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Create
          # Set association labels between two records.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param to_object_id [Integer] 
          # @param association_spec [Array<AssociationSpec>] 
          # @param [Hash] opts the optional parameters
          # @return [LabelsBetweenObjectPair]
          def create(feedback_submission_id, to_object_type, to_object_id, association_spec, opts = {})
            data, _status_code, _headers = create_with_http_info(feedback_submission_id, to_object_type, to_object_id, association_spec, opts)
            data
          end

          # Create
          # Set association labels between two records.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param to_object_id [Integer] 
          # @param association_spec [Array<AssociationSpec>] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(LabelsBetweenObjectPair, Integer, Hash)>] LabelsBetweenObjectPair data, response status code and response headers
          def create_with_http_info(feedback_submission_id, to_object_type, to_object_id, association_spec, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: AssociationsApi.create ...'
            end
            # verify the required parameter 'feedback_submission_id' is set
            if @api_client.config.client_side_validation && feedback_submission_id.nil?
              fail ArgumentError, "Missing the required parameter 'feedback_submission_id' when calling AssociationsApi.create"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.create"
            end
            # verify the required parameter 'to_object_id' is set
            if @api_client.config.client_side_validation && to_object_id.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.create"
            end
            # verify the required parameter 'association_spec' is set
            if @api_client.config.client_side_validation && association_spec.nil?
              fail ArgumentError, "Missing the required parameter 'association_spec' when calling AssociationsApi.create"
            end
            # resource path
            local_var_path = '/crm/v4/objects/feedback_submissions/{feedbackSubmissionId}/associations/{toObjectType}/{toObjectId}'.sub('{' + 'feedbackSubmissionId' + '}', CGI.escape(feedback_submission_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s)).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s))

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
            post_body = opts[:debug_body] || @api_client.object_to_http_body(association_spec)

            # return_type
            return_type = opts[:debug_return_type] || 'LabelsBetweenObjectPair'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :operation => :"AssociationsApi.create",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: AssociationsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # List
          # List all associations of a feedback submission by object type. Limit 1000 per call.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param [Hash] opts the optional parameters
          # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to display per page. (default to 500)
          # @return [CollectionResponseMultiAssociatedObjectWithLabelForwardPaging]
          def get_page(feedback_submission_id, to_object_type, opts = {})
            data, _status_code, _headers = get_page_with_http_info(feedback_submission_id, to_object_type, opts)
            data
          end

          # List
          # List all associations of a feedback submission by object type. Limit 1000 per call.
          # @param feedback_submission_id [Integer] 
          # @param to_object_type [String] 
          # @param [Hash] opts the optional parameters
          # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to display per page. (default to 500)
          # @return [Array<(CollectionResponseMultiAssociatedObjectWithLabelForwardPaging, Integer, Hash)>] CollectionResponseMultiAssociatedObjectWithLabelForwardPaging data, response status code and response headers
          def get_page_with_http_info(feedback_submission_id, to_object_type, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: AssociationsApi.get_page ...'
            end
            # verify the required parameter 'feedback_submission_id' is set
            if @api_client.config.client_side_validation && feedback_submission_id.nil?
              fail ArgumentError, "Missing the required parameter 'feedback_submission_id' when calling AssociationsApi.get_page"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.get_page"
            end
            # resource path
            local_var_path = '/crm/v4/objects/feedback_submissions/{feedbackSubmissionId}/associations/{toObjectType}'.sub('{' + 'feedbackSubmissionId' + '}', CGI.escape(feedback_submission_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
            query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body]

            # return_type
            return_type = opts[:debug_return_type] || 'CollectionResponseMultiAssociatedObjectWithLabelForwardPaging'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :operation => :"AssociationsApi.get_page",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: AssociationsApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
