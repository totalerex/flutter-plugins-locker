// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos/flutter_locker.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// https://pub.dev/packages/protoc_plugin

//  export PATH="$PATH":"$HOME/.pub-cache/bin" or PATH=$PATH:$(pwd)
//  pub global activate protoc_plugin

// protoc --dart_out=./lib/gen/ protos/flutter_locker.proto
// protoc --swift_out=./ios/Classes ./protos/flutter_locker.proto

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum ProtoMethodInterface: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case canAuthenticate // = 0
  case saveSecret // = 1
  case retrieveSecret // = 2
  case deleteSecret // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .canAuthenticate
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .canAuthenticate
    case 1: self = .saveSecret
    case 2: self = .retrieveSecret
    case 3: self = .deleteSecret
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .canAuthenticate: return 0
    case .saveSecret: return 1
    case .retrieveSecret: return 2
    case .deleteSecret: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ProtoMethodInterface: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ProtoMethodInterface] = [
    .canAuthenticate,
    .saveSecret,
    .retrieveSecret,
    .deleteSecret,
  ]
}

#endif  // swift(>=4.2)

enum ProtoLockerError: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case secretNotFound // = 0
  case authenticationCanceled // = 1
  case authenticationFailed // = 2
  case unknown // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .secretNotFound
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .secretNotFound
    case 1: self = .authenticationCanceled
    case 2: self = .authenticationFailed
    case 3: self = .unknown
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .secretNotFound: return 0
    case .authenticationCanceled: return 1
    case .authenticationFailed: return 2
    case .unknown: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ProtoLockerError: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ProtoLockerError] = [
    .secretNotFound,
    .authenticationCanceled,
    .authenticationFailed,
    .unknown,
  ]
}

#endif  // swift(>=4.2)

struct ProtoAndroidPrompt {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var titleText: String = String()

  var cancelText: String = String()

  var description_p: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ProtoIOsPrompt {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var touchIDText: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ProtoSaveRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var secret: String = String()

  var androidPrompt: ProtoAndroidPrompt {
    get {return _androidPrompt ?? ProtoAndroidPrompt()}
    set {_androidPrompt = newValue}
  }
  /// Returns true if `androidPrompt` has been explicitly set.
  var hasAndroidPrompt: Bool {return self._androidPrompt != nil}
  /// Clears the value of `androidPrompt`. Subsequent reads from it will return its default value.
  mutating func clearAndroidPrompt() {self._androidPrompt = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _androidPrompt: ProtoAndroidPrompt? = nil
}

struct ProtoRetrieveRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var androidPrompt: ProtoAndroidPrompt {
    get {return _androidPrompt ?? ProtoAndroidPrompt()}
    set {_androidPrompt = newValue}
  }
  /// Returns true if `androidPrompt` has been explicitly set.
  var hasAndroidPrompt: Bool {return self._androidPrompt != nil}
  /// Clears the value of `androidPrompt`. Subsequent reads from it will return its default value.
  mutating func clearAndroidPrompt() {self._androidPrompt = nil}

  var iOsPrompt: ProtoIOsPrompt {
    get {return _iOsPrompt ?? ProtoIOsPrompt()}
    set {_iOsPrompt = newValue}
  }
  /// Returns true if `iOsPrompt` has been explicitly set.
  var hasIOsPrompt: Bool {return self._iOsPrompt != nil}
  /// Clears the value of `iOsPrompt`. Subsequent reads from it will return its default value.
  mutating func clearIOsPrompt() {self._iOsPrompt = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _androidPrompt: ProtoAndroidPrompt? = nil
  fileprivate var _iOsPrompt: ProtoIOsPrompt? = nil
}

struct ProtoDeleteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension ProtoMethodInterface: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "canAuthenticate"),
    1: .same(proto: "saveSecret"),
    2: .same(proto: "retrieveSecret"),
    3: .same(proto: "deleteSecret"),
  ]
}

extension ProtoLockerError: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "secretNotFound"),
    1: .same(proto: "authenticationCanceled"),
    2: .same(proto: "authenticationFailed"),
    3: .same(proto: "unknown"),
  ]
}

extension ProtoAndroidPrompt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoAndroidPrompt"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "titleText"),
    2: .same(proto: "cancelText"),
    3: .same(proto: "description"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.titleText)
      case 2: try decoder.decodeSingularStringField(value: &self.cancelText)
      case 3: try decoder.decodeSingularStringField(value: &self.description_p)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.titleText.isEmpty {
      try visitor.visitSingularStringField(value: self.titleText, fieldNumber: 1)
    }
    if !self.cancelText.isEmpty {
      try visitor.visitSingularStringField(value: self.cancelText, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoAndroidPrompt, rhs: ProtoAndroidPrompt) -> Bool {
    if lhs.titleText != rhs.titleText {return false}
    if lhs.cancelText != rhs.cancelText {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtoIOsPrompt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoIOsPrompt"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "touchIdText"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.touchIDText)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.touchIDText.isEmpty {
      try visitor.visitSingularStringField(value: self.touchIDText, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoIOsPrompt, rhs: ProtoIOsPrompt) -> Bool {
    if lhs.touchIDText != rhs.touchIDText {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtoSaveRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoSaveRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "secret"),
    3: .same(proto: "androidPrompt"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularStringField(value: &self.secret)
      case 3: try decoder.decodeSingularMessageField(value: &self._androidPrompt)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.secret.isEmpty {
      try visitor.visitSingularStringField(value: self.secret, fieldNumber: 2)
    }
    if let v = self._androidPrompt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoSaveRequest, rhs: ProtoSaveRequest) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.secret != rhs.secret {return false}
    if lhs._androidPrompt != rhs._androidPrompt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtoRetrieveRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoRetrieveRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "androidPrompt"),
    3: .same(proto: "iOsPrompt"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularMessageField(value: &self._androidPrompt)
      case 3: try decoder.decodeSingularMessageField(value: &self._iOsPrompt)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if let v = self._androidPrompt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._iOsPrompt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoRetrieveRequest, rhs: ProtoRetrieveRequest) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs._androidPrompt != rhs._androidPrompt {return false}
    if lhs._iOsPrompt != rhs._iOsPrompt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtoDeleteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoDeleteRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoDeleteRequest, rhs: ProtoDeleteRequest) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
