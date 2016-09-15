/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_fieldorder.proto
 *
 */

//  Protos/unittest_swift_fieldorder.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Check that fields get properly ordered when serializing
// /
//  -----------------------------------------------------------------------------

import Foundation
import Protobuf


public struct Swift_Protobuf_TestFieldOrderings: ProtobufGeneratedMessage, ProtobufExtensibleMessage {
  public var swiftClassName: String {return "Swift_Protobuf_TestFieldOrderings"}
  public var protoMessageName: String {return "TestFieldOrderings"}
  public var protoPackageName: String {return "swift.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "myString": 11,
    "myInt": 1,
    "myFloat": 101,
    "oneofInt64": 60,
    "oneofBool": 9,
    "oneofString": 150,
    "oneofInt32": 10,
    "optionalNestedMessage": 200,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "my_string": 11,
    "my_int": 1,
    "my_float": 101,
    "oneof_int64": 60,
    "oneof_bool": 9,
    "oneof_string": 150,
    "oneof_int32": 10,
    "optional_nested_message": 200,
  ]}

  private class _StorageClass: ProtobufExtensibleMessageStorage {
    typealias ProtobufExtendedMessage = Swift_Protobuf_TestFieldOrderings
    var extensionFieldValues = ProtobufExtensionFieldValueSet()
    var unknown = ProtobufUnknownStorage()
    var _myString: String? = nil
    var _myInt: Int64? = nil
    var _myFloat: Float? = nil
    var _options = Swift_Protobuf_TestFieldOrderings.OneOf_Options()
    var _optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 11: handled = try setter.decodeOptionalField(fieldType: ProtobufString.self, value: &_myString)
      case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt64.self, value: &_myInt)
      case 101: handled = try setter.decodeOptionalField(fieldType: ProtobufFloat.self, value: &_myFloat)
      case 60, 9, 150, 10:
        handled = try _options.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      case 200: handled = try setter.decodeOptionalMessageField(fieldType: Swift_Protobuf_TestFieldOrderings.NestedMessage.self, value: &_optionalNestedMessage)
      default:
        if (2 <= protoFieldNumber && protoFieldNumber < 9) || (12 <= protoFieldNumber && protoFieldNumber < 56) {
          handled = try setter.decodeExtensionField(values: &extensionFieldValues, messageType: Swift_Protobuf_TestFieldOrderings.self, protoFieldNumber: protoFieldNumber)
        } else {
          handled = false
        }
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _myInt {
        try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: v, protoFieldNumber: 1, protoFieldName: "my_int", jsonFieldName: "myInt", swiftFieldName: "myInt")
      }
      try extensionFieldValues.traverse(visitor: &visitor, start: 2, end: 9)
      try _options.traverse(visitor: &visitor, start: 9, end: 11)
      if let v = _myString {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 11, protoFieldName: "my_string", jsonFieldName: "myString", swiftFieldName: "myString")
      }
      try extensionFieldValues.traverse(visitor: &visitor, start: 12, end: 56)
      try _options.traverse(visitor: &visitor, start: 60, end: 61)
      if let v = _myFloat {
        try visitor.visitSingularField(fieldType: ProtobufFloat.self, value: v, protoFieldNumber: 101, protoFieldName: "my_float", jsonFieldName: "myFloat", swiftFieldName: "myFloat")
      }
      try _options.traverse(visitor: &visitor, start: 150, end: 151)
      if let v = _optionalNestedMessage {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 200, protoFieldName: "optional_nested_message", jsonFieldName: "optionalNestedMessage", swiftFieldName: "optionalNestedMessage")
      }
      unknown.traverse(visitor: &visitor)
    }

    var isEmpty: Bool {
      if _myString != nil {return false}
      if _myInt != nil {return false}
      if _myFloat != nil {return false}
      if !_options.isEmpty {return false}
      if _optionalNestedMessage != nil {return false}
      if !unknown.isEmpty {return false}
      if !extensionFieldValues.isEmpty {return false}
      return true
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if ((_myString != nil || other._myString != nil) && (_myString == nil || other._myString == nil || _myString! != other._myString!)) {return false}
      if ((_myInt != nil || other._myInt != nil) && (_myInt == nil || other._myInt == nil || _myInt! != other._myInt!)) {return false}
      if ((_myFloat != nil || other._myFloat != nil) && (_myFloat == nil || other._myFloat == nil || _myFloat! != other._myFloat!)) {return false}
      if _options != other._options {return false}
      if (((_optionalNestedMessage != nil && !_optionalNestedMessage!.isEmpty) || (other._optionalNestedMessage != nil && !other._optionalNestedMessage!.isEmpty)) && (_optionalNestedMessage == nil || other._optionalNestedMessage == nil || _optionalNestedMessage! != other._optionalNestedMessage!)) {return false}
      if unknown != other.unknown {return false}
      if extensionFieldValues != other.extensionFieldValues {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone.extensionFieldValues = extensionFieldValues
      clone._myString = _myString
      clone._myInt = _myInt
      clone._myFloat = _myFloat
      clone._options = _options
      clone._optionalNestedMessage = _optionalNestedMessage
      return clone
    }
  }

  private var _storage: _StorageClass?

  public enum OneOf_Options: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case oneofInt64(Int64)
    case oneofBool(Bool)
    case oneofString(String)
    case oneofInt32(Int32)
    case None

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      if self != .None && setter.rejectConflictingOneof {
        throw ProtobufDecodingError.duplicatedOneOf
      }
      let handled: Bool
      switch protoFieldNumber {
      case 9:
        var value: Bool?
        handled = try setter.decodeOptionalField(fieldType: ProtobufBool.self, value: &value)
        if let value = value, handled {
          self = .oneofBool(value)
        }
      case 10:
        var value: Int32?
        handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &value)
        if let value = value, handled {
          self = .oneofInt32(value)
        }
      case 60:
        var value: Int64?
        handled = try setter.decodeOptionalField(fieldType: ProtobufInt64.self, value: &value)
        if let value = value, handled {
          self = .oneofInt64(value)
        }
      case 150:
        var value: String?
        handled = try setter.decodeOptionalField(fieldType: ProtobufString.self, value: &value)
        if let value = value, handled {
          self = .oneofString(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .oneofBool(let v):
        if start <= 9 && 9 < end {
          try visitor.visitSingularField(fieldType: ProtobufBool.self, value: v, protoFieldNumber: 9, protoFieldName: "oneof_bool", jsonFieldName: "oneofBool", swiftFieldName: "oneofBool")
        }
      case .oneofInt32(let v):
        if start <= 10 && 10 < end {
          try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 10, protoFieldName: "oneof_int32", jsonFieldName: "oneofInt32", swiftFieldName: "oneofInt32")
        }
      case .oneofInt64(let v):
        if start <= 60 && 60 < end {
          try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: v, protoFieldNumber: 60, protoFieldName: "oneof_int64", jsonFieldName: "oneofInt64", swiftFieldName: "oneofInt64")
        }
      case .oneofString(let v):
        if start <= 150 && 150 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 150, protoFieldName: "oneof_string", jsonFieldName: "oneofString", swiftFieldName: "oneofString")
        }
      case .None:
        break
      }
    }

    public var isEmpty: Bool {return self == .None}
  }

  public struct NestedMessage: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "Swift_Protobuf_TestFieldOrderings.NestedMessage"}
    public var protoMessageName: String {return "NestedMessage"}
    public var protoPackageName: String {return "swift.protobuf"}
    public var jsonFieldNames: [String: Int] {return [
      "oo": 2,
      "bb": 1,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "oo": 2,
      "bb": 1,
    ]}

    var unknown = ProtobufUnknownStorage()

    public var oo: Int64? = nil

    public var bb: Int32? = nil

    public init() {}

    public init(oo: Int64? = nil,
      bb: Int32? = nil)
    {
      self.oo = oo
      self.bb = bb
    }

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 2: handled = try setter.decodeOptionalField(fieldType: ProtobufInt64.self, value: &oo)
      case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &bb)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      if let v = bb {
        try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "bb", jsonFieldName: "bb", swiftFieldName: "bb")
      }
      if let v = oo {
        try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: v, protoFieldNumber: 2, protoFieldName: "oo", jsonFieldName: "oo", swiftFieldName: "oo")
      }
      unknown.traverse(visitor: &visitor)
    }

    public var _protoc_generated_isEmpty: Bool {
      if oo != nil {return false}
      if bb != nil {return false}
      if !unknown.isEmpty {return false}
      return true
    }

    public func _protoc_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings.NestedMessage) -> Bool {
      if ((oo != nil || other.oo != nil) && (oo == nil || other.oo == nil || oo! != other.oo!)) {return false}
      if ((bb != nil || other.bb != nil) && (bb == nil || other.bb == nil || bb! != other.bb!)) {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  public var myString: String? {
    get {return _storage?._myString}
    set {_uniqueStorage()._myString = newValue}
  }

  public var myInt: Int64? {
    get {return _storage?._myInt}
    set {_uniqueStorage()._myInt = newValue}
  }

  public var myFloat: Float? {
    get {return _storage?._myFloat}
    set {_uniqueStorage()._myFloat = newValue}
  }

  public var oneofInt64: Int64? {
    get {
      if let storage = _storage {
        if case .oneofInt64(let v) = storage._options {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._options = .oneofInt64(newValue)
      } else {
        _uniqueStorage()._options = .None
      }
    }
  }

  public var oneofBool: Bool? {
    get {
      if let storage = _storage {
        if case .oneofBool(let v) = storage._options {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._options = .oneofBool(newValue)
      } else {
        _uniqueStorage()._options = .None
      }
    }
  }

  public var oneofString: String? {
    get {
      if let storage = _storage {
        if case .oneofString(let v) = storage._options {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._options = .oneofString(newValue)
      } else {
        _uniqueStorage()._options = .None
      }
    }
  }

  public var oneofInt32: Int32? {
    get {
      if let storage = _storage {
        if case .oneofInt32(let v) = storage._options {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._options = .oneofInt32(newValue)
      } else {
        _uniqueStorage()._options = .None
      }
    }
  }

  public var optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage? {
    get {return _storage?._optionalNestedMessage}
    set {_uniqueStorage()._optionalNestedMessage = newValue}
  }

  public var _options: OneOf_Options {
    get {return _storage?._options ?? .None}
    set {
      _uniqueStorage()._options = newValue
    }
  }

  public init() {}

  public init(myString: String? = nil,
    myInt: Int64? = nil,
    myFloat: Float? = nil,
    oneofInt64: Int64? = nil,
    oneofBool: Bool? = nil,
    oneofString: String? = nil,
    oneofInt32: Int32? = nil,
    optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage? = nil)
  {
    let storage = _uniqueStorage()
    storage._myString = myString
    storage._myInt = myInt
    storage._myFloat = myFloat
    if let v = oneofInt64 {
      storage._options = .oneofInt64(v)
    }
    if let v = oneofBool {
      storage._options = .oneofBool(v)
    }
    if let v = oneofString {
      storage._options = .oneofString(v)
    }
    if let v = oneofInt32 {
      storage._options = .oneofInt32(v)
    }
    storage._optionalNestedMessage = optionalNestedMessage
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage?.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {return _storage?.isEmpty ?? true}

  public func _protoc_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings) -> Bool {
    if let s = _storage {
      if let os = other._storage {
        return s === os || s.isEqualTo(other: os)
      }
      return isEmpty // empty storage == nil storage
    } else if let os = other._storage {
      return os.isEmpty // nil storage == empty storage
    }
    return true // Both nil, both empty
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if _storage == nil {
      _storage = _StorageClass()
    } else if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage!.copy()
    }
    return _storage!
  }

  public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Swift_Protobuf_TestFieldOrderings>, value: F.ValueType) {
    return _uniqueStorage().setExtensionValue(ext: ext, value: value)
  }

  public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Swift_Protobuf_TestFieldOrderings>) -> F.ValueType {
    return _storage?.getExtensionValue(ext: ext) ?? ext.defaultValue
  }
}

let Swift_Protobuf_TestFieldOrderings_myExtensionString = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufString>, Swift_Protobuf_TestFieldOrderings>(protoFieldNumber: 50, protoFieldName: "my_extension_string", jsonFieldName: "myExtensionString", swiftFieldName: "myExtensionString", defaultValue: nil)

let Swift_Protobuf_TestFieldOrderings_myExtensionInt = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufInt32>, Swift_Protobuf_TestFieldOrderings>(protoFieldNumber: 5, protoFieldName: "my_extension_int", jsonFieldName: "myExtensionInt", swiftFieldName: "myExtensionInt", defaultValue: nil)

public func ==(lhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options, rhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options) -> Bool {
  switch (lhs, rhs) {
  case (.oneofInt64(let l), .oneofInt64(let r)): return l == r
  case (.oneofBool(let l), .oneofBool(let r)): return l == r
  case (.oneofString(let l), .oneofString(let r)): return l == r
  case (.oneofInt32(let l), .oneofInt32(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}

extension Swift_Protobuf_TestFieldOrderings {
  var myExtensionString: String? {
    get {return getExtensionValue(ext: Swift_Protobuf_TestFieldOrderings_myExtensionString)}
    set {setExtensionValue(ext: Swift_Protobuf_TestFieldOrderings_myExtensionString, value: newValue)}
  }
}

extension Swift_Protobuf_TestFieldOrderings {
  var myExtensionInt: Int32? {
    get {return getExtensionValue(ext: Swift_Protobuf_TestFieldOrderings_myExtensionInt)}
    set {setExtensionValue(ext: Swift_Protobuf_TestFieldOrderings_myExtensionInt, value: newValue)}
  }
}

let Swift_Protobuf_UnittestSwiftFieldorder_Extensions: ProtobufExtensionSet = [
  Swift_Protobuf_TestFieldOrderings_myExtensionString,
  Swift_Protobuf_TestFieldOrderings_myExtensionInt
]
