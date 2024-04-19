=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module RBACApiClient
  class AccessApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the permitted access for a principal in the tenant (defaults to principal from the identity header)
    # Access responses are sorted in ascending order by an ID internal to the database
    # @param application [String] The application name(s) to obtain access for the principal. This is an exact match. When no application is supplied, all permissions for the principal are returned. You may also use a comma-separated list to match on multiple applications.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header).
    # @option opts [String] :order_by Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-application
    # @option opts [String] :status Set the status of users to get back. (default to 'enabled')
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @return [AccessPagination]
    def get_principal_access(application, opts = {})
      data, _status_code, _headers = get_principal_access_with_http_info(application, opts)
      data
    end

    # Get the permitted access for a principal in the tenant (defaults to principal from the identity header)
    # Access responses are sorted in ascending order by an ID internal to the database
    # @param application [String] The application name(s) to obtain access for the principal. This is an exact match. When no application is supplied, all permissions for the principal are returned. You may also use a comma-separated list to match on multiple applications.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header).
    # @option opts [String] :order_by Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-application
    # @option opts [String] :status Set the status of users to get back. (default to 'enabled')
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @return [Array<(AccessPagination, Integer, Hash)>] AccessPagination data, response status code and response headers
    def get_principal_access_with_http_info(application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessApi.get_principal_access ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling AccessApi.get_principal_access"
      end
      allowable_values = ["application", "resource_type", "verb"]
      if @api_client.config.client_side_validation && opts[:'order_by'] && !allowable_values.include?(opts[:'order_by'])
        fail ArgumentError, "invalid value for \"order_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["enabled", "disabled", "all"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AccessApi.get_principal_access, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AccessApi.get_principal_access, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling AccessApi.get_principal_access, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/access/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'application'] = application
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccessPagination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"AccessApi.get_principal_access",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessApi#get_principal_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
