# frozen_string_literal: true

module Hanzoai
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_accessor :cause
  end

  class ConversionError < Hanzoai::Error
  end

  class APIError < Hanzoai::Error
    # @return [URI::Generic]
    attr_accessor :url

    # @return [Integer, nil]
    attr_accessor :status

    # @return [Object, nil]
    attr_accessor :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Hanzoai::APIError
    # @!parse
    #   # @return [nil]
    #   attr_accessor :status

    # @!parse
    #   # @return [nil]
    #   attr_accessor :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < Hanzoai::APIConnectionError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < Hanzoai::APIError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [Hanzoai::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        Hanzoai::BadRequestError.new(**kwargs)
      in 401
        Hanzoai::AuthenticationError.new(**kwargs)
      in 403
        Hanzoai::PermissionDeniedError.new(**kwargs)
      in 404
        Hanzoai::NotFoundError.new(**kwargs)
      in 409
        Hanzoai::ConflictError.new(**kwargs)
      in 422
        Hanzoai::UnprocessableEntityError.new(**kwargs)
      in 429
        Hanzoai::RateLimitError.new(**kwargs)
      in (500..)
        Hanzoai::InternalServerError.new(**kwargs)
      else
        Hanzoai::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_accessor :status

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < Hanzoai::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Hanzoai::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Hanzoai::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Hanzoai::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Hanzoai::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Hanzoai::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Hanzoai::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Hanzoai::APIStatusError
    HTTP_STATUS = (500..)
  end
end
