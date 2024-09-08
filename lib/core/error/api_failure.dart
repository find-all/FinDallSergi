import 'package:fin_dall/core/error/failure.dart';

sealed class ApiFailure extends Failure {
  final int statusCode;

  ApiFailure(
      {required super.message,
      required super.error,
      required super.stackTrace,
      required this.statusCode});
}

final class ContinueFailure extends ApiFailure {
  ContinueFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 100,
            message:
                'This interim response indicates that the client should continue the request or ignore the response if the request is already finished.');
}

final class SwitchingProtocolsFailure extends ApiFailure {
  SwitchingProtocolsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 101,
            message:
                'This code is sent in response to an Upgrade request header from the client, and indicates the protocol the server is switching to.');
}

final class ProcessingFailure extends ApiFailure {
  ProcessingFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 102,
            message:
                'This code indicates that the server has received and is processing the request, but no response is available yet.');
}

final class EarlyHintsFailure extends ApiFailure {
  EarlyHintsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 103,
            message:
                'Used to return some response headers before final HTTP message.');
}

// 3xx Redirection
final class MultipleChoicesFailure extends ApiFailure {
  MultipleChoicesFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 300,
            message:
                'The request has more than one possible response. The user agent or user should choose one of them. (There is no standardized way of choosing one of the responses, but HTML links to the possibilities are recommended so the user can pick.)');
}

final class MovedPermanentlyFailure extends ApiFailure {
  MovedPermanentlyFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 301,
            message:
                'The URL of the requested resource has been changed permanently. The new URL is given in the response.');
}

final class FoundFailure extends ApiFailure {
  FoundFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 302,
            message:
                'The server is redirecting you to a different endpoint. This can happen when a company switches domain names, or an endpoint name is changed.');
}

final class SeeOtherFailure extends ApiFailure {
  SeeOtherFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 303,
            message:
                'The response to the request can be found under another URI using a GET method. When received in response to a POST (or PUT/DELETE), the client should presume that the server has received the data and should issue a new GET request to the given URI.');
}

final class NotModifiedFailure extends ApiFailure {
  NotModifiedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 304,
            message:
                'This is used for caching purposes. It tells the client that the response has not been modified, so the client can continue to use the same cached version of the response.');
}

final class UseProxyFailure extends ApiFailure {
  UseProxyFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 305,
            message:
                'Was defined in a previous version of the HTTP specification to indicate that a requested response must be accessed by a proxy. It has been deprecated due to security concerns regarding in-band configuration of a proxy.');
}

final class SwitchProxyFailure extends ApiFailure {
  SwitchProxyFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 306,
            message:
                'This response code is no longer used; it is just reserved. It was used in a previous version of the HTTP/1.1 specification.');
}

final class TemporaryRedirectFailure extends ApiFailure {
  TemporaryRedirectFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 307,
            message:
                'The request should be repeated with another URI; however, future requests should still use the original URI. In contrast to how 302 was historically implemented, the request method is not allowed to be changed when reissuing the original request. For example, a POST request should be repeated using another POST request.');
}

final class PermanentRedirectFailure extends ApiFailure {
  PermanentRedirectFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 308,
            message:
                'The request and all future requests should be repeated using another URI. 307 and 308 parallel the behaviors of 302 and 301, but do not allow the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly.');
}

// 4xx Client errors
final class BadRequestFailure extends ApiFailure {
  BadRequestFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 400,
            message:
                'The server could not understand the request due to invalid syntax.');
}

final class UnauthorizedFailure extends ApiFailure {
  UnauthorizedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 401,
            message:
                'Although the HTTP standard specifies "unauthorized", semantically this response means "unauthenticated". That is, the client must authenticate itself to get the requested response.');
}

final class PaymentRequiredFailure extends ApiFailure {
  PaymentRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 402,
            message:
                'This response code is reserved for future use. Initial aim for creating this code was using it for digital payment systems however this is not used currently.');
}

final class ForbiddenFailure extends ApiFailure {
  ForbiddenFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 403,
            message:
                'The client does not have the necessary permissions to access the resource.');
}

final class InvalidCrendentialsFailure extends ApiFailure {
  InvalidCrendentialsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 422,
            message:
                'The client does not have the necessary permissions to access the resource.');
}

final class InvalidActivationCode extends ApiFailure {
  InvalidActivationCode({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 403,
            message:
                'The client does not have the necessary permissions to access the resource.');
}

final class UserDisabledFailure extends ApiFailure {
  UserDisabledFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 406,
            message:
                'The client does not have the necessary permissions to access the resource.');
}

final class NotFoundFailure extends ApiFailure {
  NotFoundFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 404,
            message:
                'The server can not find the requested resource. In the browser, this means the URL is not recognized. In an API, this can also mean that the endpoint is valid but the resource itself does not exist.');
}

final class MethodNotAllowedFailure extends ApiFailure {
  MethodNotAllowedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 405,
            message: 'The method specified in the request is not allowed.');
}

final class NotAcceptableFailure extends ApiFailure {
  NotAcceptableFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 406,
            message:
                'The server cannot send a response acceptable to the client.');
}

final class ProxyAuthenticationRequiredFailure extends ApiFailure {
  ProxyAuthenticationRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 407,
            message:
                'Proxy authentication is required to access the requested resource.');
}

final class RequestTimeoutFailure extends ApiFailure {
  RequestTimeoutFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 408,
            message: 'The server timed out waiting for the request.');
}

final class ConflictFailure extends ApiFailure {
  ConflictFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 409,
            message:
                'The request could not be completed due to a conflict with the current state of the resource.');
}

final class EmailAlreadyExistsFailure extends ApiFailure {
  EmailAlreadyExistsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 409,
            message:
                'The request could not be completed due to a conflict with the current state of the resource.');
}

final class GoneFailure extends ApiFailure {
  GoneFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 410,
            message:
                'The requested resource is no longer available and will not be available again.');
}

final class LengthRequiredFailure extends ApiFailure {
  LengthRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 411,
            message:
                'The request did not specify the length of its content, which is required by the requested resource.');
}

final class PreconditionFailedFailure extends ApiFailure {
  PreconditionFailedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 412,
            message:
                'The server does not meet one of the preconditions that the requester put on the request.');
}

final class PayloadTooLargeFailure extends ApiFailure {
  PayloadTooLargeFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 413,
            message:
                'The request is larger than the server is willing or able to process.');
}

final class URITooLongFailure extends ApiFailure {
  URITooLongFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 414,
            message:
                'The URI provided was too long for the server to process.');
}

final class UnsupportedMediaTypeFailure extends ApiFailure {
  UnsupportedMediaTypeFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 415,
            message:
                'The request entity has a media type which the server or resource does not support.');
}

final class RangeNotSatisfiableFailure extends ApiFailure {
  RangeNotSatisfiableFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 416,
            message:
                'The client has asked for a portion of the file, but the server cannot supply that portion.');
}

final class ExpectationFailedFailure extends ApiFailure {
  ExpectationFailedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 417,
            message:
                'The server cannot meet the requirements of the Expect request-header field.');
}

final class ImATeapotFailure extends ApiFailure {
  ImATeapotFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 418,
            message:
                'This code was defined in 1998 as one of the traditional IETF April Fools\' jokes.');
}

final class MisdirectedRequestFailure extends ApiFailure {
  MisdirectedRequestFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 421,
            message:
                'The request was directed at a server that is not able to produce a response.');
}

final class UnprocessableEntityFailure extends ApiFailure {
  UnprocessableEntityFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 422,
            message:
                'The server understands the content type of the request entity, but was unable to process the contained instructions.');
}

final class LockedFailure extends ApiFailure {
  LockedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 423,
            message: 'The resource that is being accessed is locked.');
}

final class FailedDependencyFailure extends ApiFailure {
  FailedDependencyFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 424,
            message:
                'The request failed due to failure of a previous request.');
}

final class TooEarlyFailure extends ApiFailure {
  TooEarlyFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 425,
            message:
                'The server is unwilling to risk processing a request that might be replayed.');
}

final class UpgradeRequiredFailure extends ApiFailure {
  UpgradeRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 426,
            message:
                'The client should switch to a different protocol such as TLS/1.0.');
}

final class PreconditionRequiredFailure extends ApiFailure {
  PreconditionRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 428,
            message: 'The server requires the request to be conditional.');
}

final class TooManyRequestsFailure extends ApiFailure {
  TooManyRequestsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 429,
            message:
                'The user has sent too many requests in a given amount of time.');
}

final class RequestHeaderFieldsTooLargeFailure extends ApiFailure {
  RequestHeaderFieldsTooLargeFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 431,
            message:
                'The server is unwilling to process the request because its header fields are too large.');
}

final class UnavailableForLegalReasonsFailure extends ApiFailure {
  UnavailableForLegalReasonsFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 451,
            message:
                'The user requests a resource that is unavailable for legal reasons.');
}

// 5xx Server errors
final class InternalServerErrorFailure extends ApiFailure {
  InternalServerErrorFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 500,
            message:
                'The server has encountered a situation it doesn\'t know how to handle.');
}

final class NotImplementedFailure extends ApiFailure {
  NotImplementedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 501,
            message:
                'The request method is not supported by the server and cannot be handled.');
}

final class BadGatewayFailure extends ApiFailure {
  BadGatewayFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 502,
            message:
                'The server, while acting as a gateway, got an invalid response.');
}

final class ServiceUnavailableFailure extends ApiFailure {
  ServiceUnavailableFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 503,
            message: 'The server is not ready to handle the request.');
}

final class GatewayTimeoutFailure extends ApiFailure {
  GatewayTimeoutFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 504,
            message:
                'The server, while acting as a gateway, did not get a response in time.');
}

final class HttpVersionNotSupportedFailure extends ApiFailure {
  HttpVersionNotSupportedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 505,
            message:
                'The HTTP version used in the request is not supported by the server.');
}

final class VariantAlsoNegotiatesFailure extends ApiFailure {
  VariantAlsoNegotiatesFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 506,
            message: 'The server has an internal configuration error.');
}

final class InsufficientStorageFailure extends ApiFailure {
  InsufficientStorageFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 507,
            message:
                'The server is unable to store the representation needed to complete the request.');
}

final class LoopDetectedFailure extends ApiFailure {
  LoopDetectedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 508,
            message:
                'The server detected an infinite loop while processing a request.');
}

final class NotExtendedFailure extends ApiFailure {
  NotExtendedFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 510,
            message: 'Further extensions are needed to fulfill the request.');
}

final class NetworkAuthenticationRequiredFailure extends ApiFailure {
  NetworkAuthenticationRequiredFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
            statusCode: 511,
            message:
                'The client needs to authenticate to gain network access.');
}

final class UnknownApiFailure extends ApiFailure {
  UnknownApiFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
    required super.statusCode,
  });
}

final class InvalidResponseFormatFailure extends ApiFailure {
  InvalidResponseFormatFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
    required super.statusCode,
  });
}
