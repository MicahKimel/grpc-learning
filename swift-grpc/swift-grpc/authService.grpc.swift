//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: authService.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Define the service containing methods here
///
/// Usage: instantiate `AuthService_AuthServiceRoutesClient`, then call methods of this protocol to make API calls.
internal protocol AuthService_AuthServiceRoutesClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? { get }

  func login(
    _ request: AuthService_AccountCredentials,
    callOptions: CallOptions?
  ) -> UnaryCall<AuthService_AccountCredentials, AuthService_OauthCredentials>

  func logout(
    _ request: AuthService_OauthCredentials,
    callOptions: CallOptions?
  ) -> UnaryCall<AuthService_OauthCredentials, AuthService_OauthCredentials>
}

extension AuthService_AuthServiceRoutesClientProtocol {
  internal var serviceName: String {
    return "authService.AuthServiceRoutes"
  }

  /// Basic function call, makes request and returns value
  ///
  /// - Parameters:
  ///   - request: Request to send to Login.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func login(
    _ request: AuthService_AccountCredentials,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<AuthService_AccountCredentials, AuthService_OauthCredentials> {
    return self.makeUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.login.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginInterceptors() ?? []
    )
  }

  /// Unary call to Logout
  ///
  /// - Parameters:
  ///   - request: Request to send to Logout.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func logout(
    _ request: AuthService_OauthCredentials,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<AuthService_OauthCredentials, AuthService_OauthCredentials> {
    return self.makeUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension AuthService_AuthServiceRoutesClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "AuthService_AuthServiceRoutesNIOClient")
internal final class AuthService_AuthServiceRoutesClient: AuthService_AuthServiceRoutesClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the authService.AuthServiceRoutes service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct AuthService_AuthServiceRoutesNIOClient: AuthService_AuthServiceRoutesClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol?

  /// Creates a client for the authService.AuthServiceRoutes service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Define the service containing methods here
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol AuthService_AuthServiceRoutesAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? { get }

  func makeLoginCall(
    _ request: AuthService_AccountCredentials,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<AuthService_AccountCredentials, AuthService_OauthCredentials>

  func makeLogoutCall(
    _ request: AuthService_OauthCredentials,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<AuthService_OauthCredentials, AuthService_OauthCredentials>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension AuthService_AuthServiceRoutesAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return AuthService_AuthServiceRoutesClientMetadata.serviceDescriptor
  }

  internal var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeLoginCall(
    _ request: AuthService_AccountCredentials,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<AuthService_AccountCredentials, AuthService_OauthCredentials> {
    return self.makeAsyncUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.login.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginInterceptors() ?? []
    )
  }

  internal func makeLogoutCall(
    _ request: AuthService_OauthCredentials,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<AuthService_OauthCredentials, AuthService_OauthCredentials> {
    return self.makeAsyncUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension AuthService_AuthServiceRoutesAsyncClientProtocol {
  internal func login(
    _ request: AuthService_AccountCredentials,
    callOptions: CallOptions? = nil
  ) async throws -> AuthService_OauthCredentials {
    return try await self.performAsyncUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.login.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginInterceptors() ?? []
    )
  }

  internal func logout(
    _ request: AuthService_OauthCredentials,
    callOptions: CallOptions? = nil
  ) async throws -> AuthService_OauthCredentials {
    return try await self.performAsyncUnaryCall(
      path: AuthService_AuthServiceRoutesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct AuthService_AuthServiceRoutesAsyncClient: AuthService_AuthServiceRoutesAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

internal protocol AuthService_AuthServiceRoutesClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'login'.
  func makeLoginInterceptors() -> [ClientInterceptor<AuthService_AccountCredentials, AuthService_OauthCredentials>]

  /// - Returns: Interceptors to use when invoking 'logout'.
  func makeLogoutInterceptors() -> [ClientInterceptor<AuthService_OauthCredentials, AuthService_OauthCredentials>]
}

internal enum AuthService_AuthServiceRoutesClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "AuthServiceRoutes",
    fullName: "authService.AuthServiceRoutes",
    methods: [
      AuthService_AuthServiceRoutesClientMetadata.Methods.login,
      AuthService_AuthServiceRoutesClientMetadata.Methods.logout,
    ]
  )

  internal enum Methods {
    internal static let login = GRPCMethodDescriptor(
      name: "Login",
      path: "/authService.AuthServiceRoutes/Login",
      type: GRPCCallType.unary
    )

    internal static let logout = GRPCMethodDescriptor(
      name: "Logout",
      path: "/authService.AuthServiceRoutes/Logout",
      type: GRPCCallType.unary
    )
  }
}

