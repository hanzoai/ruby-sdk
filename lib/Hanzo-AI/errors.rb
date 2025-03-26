# frozen_string_literal: true

module HanzoAI
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_accessor :cause
  end

  class ConversionError < HanzoAI::Error
  end

  class APIError < HanzoAI::Error
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

  class APIConnectionError < HanzoAI::APIError
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

  class APITimeoutError < HanzoAI::APIConnectionError
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

  class APIStatusError < HanzoAI::APIError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [HanzoAI::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        HanzoAI::BadRequestError.new(**kwargs)
      in 401
        HanzoAI::AuthenticationError.new(**kwargs)
      in 403
        HanzoAI::PermissionDeniedError.new(**kwargs)
      in 404
        HanzoAI::NotFoundError.new(**kwargs)
      in 409
        HanzoAI::ConflictError.new(**kwargs)
      in 422
        HanzoAI::UnprocessableEntityError.new(**kwargs)
      in 429
        HanzoAI::RateLimitError.new(**kwargs)
      in (500..)
        HanzoAI::InternalServerError.new(**kwargs)
      else
        HanzoAI::APIStatusError.new(**kwargs)
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

  class BadRequestError < HanzoAI::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < HanzoAI::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < HanzoAI::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < HanzoAI::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < HanzoAI::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < HanzoAI::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < HanzoAI::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < HanzoAI::APIStatusError
    HTTP_STATUS = (500..)
  end
end
