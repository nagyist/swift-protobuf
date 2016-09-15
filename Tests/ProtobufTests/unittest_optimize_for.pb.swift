/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_optimize_for.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which uses optimize_for = CODE_SIZE.

import Foundation
import Protobuf


public struct ProtobufUnittest_TestOptimizedForSize: ProtobufGeneratedMessage, ProtobufExtensibleMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestOptimizedForSize"}
  public var protoMessageName: String {return "TestOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "i": 1,
    "msg": 19,
    "integerField": 2,
    "stringField": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "i": 1,
    "msg": 19,
    "integer_field": 2,
    "string_field": 3,
  ]}

  private class _StorageClass: ProtobufExtensibleMessageStorage {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestOptimizedForSize
    var extensionFieldValues = ProtobufExtensionFieldValueSet()
    var unknown = ProtobufUnknownStorage()
    var _i: Int32? = nil
    var _msg: ProtobufUnittest_ForeignMessage? = nil
    var _foo = ProtobufUnittest_TestOptimizedForSize.OneOf_Foo()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &_i)
      case 19: handled = try setter.decodeOptionalMessageField(fieldType: ProtobufUnittest_ForeignMessage.self, value: &_msg)
      case 2, 3:
        handled = try _foo.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default:
        if (1000 <= protoFieldNumber && protoFieldNumber < 536870912) {
          handled = try setter.decodeExtensionField(values: &extensionFieldValues, messageType: ProtobufUnittest_TestOptimizedForSize.self, protoFieldNumber: protoFieldNumber)
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
      if let v = _i {
        try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "i", jsonFieldName: "i", swiftFieldName: "i")
      }
      try _foo.traverse(visitor: &visitor, start: 2, end: 4)
      if let v = _msg {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 19, protoFieldName: "msg", jsonFieldName: "msg", swiftFieldName: "msg")
      }
      try extensionFieldValues.traverse(visitor: &visitor, start: 1000, end: 536870912)
      unknown.traverse(visitor: &visitor)
    }

    var isEmpty: Bool {
      if _i != nil {return false}
      if _msg != nil {return false}
      if !_foo.isEmpty {return false}
      if !unknown.isEmpty {return false}
      if !extensionFieldValues.isEmpty {return false}
      return true
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if ((_i != nil || other._i != nil) && (_i == nil || other._i == nil || _i! != other._i!)) {return false}
      if (((_msg != nil && !_msg!.isEmpty) || (other._msg != nil && !other._msg!.isEmpty)) && (_msg == nil || other._msg == nil || _msg! != other._msg!)) {return false}
      if _foo != other._foo {return false}
      if unknown != other.unknown {return false}
      if extensionFieldValues != other.extensionFieldValues {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone.extensionFieldValues = extensionFieldValues
      clone._i = _i
      clone._msg = _msg
      clone._foo = _foo
      return clone
    }
  }

  private var _storage: _StorageClass?

  public enum OneOf_Foo: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case integerField(Int32)
    case stringField(String)
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
      case 2:
        var value: Int32?
        handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &value)
        if let value = value, handled {
          self = .integerField(value)
        }
      case 3:
        var value: String?
        handled = try setter.decodeOptionalField(fieldType: ProtobufString.self, value: &value)
        if let value = value, handled {
          self = .stringField(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .integerField(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 2, protoFieldName: "integer_field", jsonFieldName: "integerField", swiftFieldName: "integerField")
        }
      case .stringField(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 3, protoFieldName: "string_field", jsonFieldName: "stringField", swiftFieldName: "stringField")
        }
      case .None:
        break
      }
    }

    public var isEmpty: Bool {return self == .None}
  }

  struct Extensions {

    static let ProtobufUnittest_TestOptimizedForSize_testExtension = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufInt32>, ProtobufUnittest_TestOptimizedForSize>(protoFieldNumber: 1234, protoFieldName: "test_extension", jsonFieldName: "testExtension", swiftFieldName: "ProtobufUnittest_TestOptimizedForSize_testExtension", defaultValue: nil)

    static let ProtobufUnittest_TestOptimizedForSize_testExtension2 = ProtobufGenericMessageExtension<ProtobufOptionalMessageField<ProtobufUnittest_TestRequiredOptimizedForSize>, ProtobufUnittest_TestOptimizedForSize>(protoFieldNumber: 1235, protoFieldName: "test_extension2", jsonFieldName: "testExtension2", swiftFieldName: "ProtobufUnittest_TestOptimizedForSize_testExtension2", defaultValue: nil)
  }

  public var i: Int32? {
    get {return _storage?._i}
    set {_uniqueStorage()._i = newValue}
  }

  public var msg: ProtobufUnittest_ForeignMessage? {
    get {return _storage?._msg}
    set {_uniqueStorage()._msg = newValue}
  }

  public var integerField: Int32? {
    get {
      if let storage = _storage {
        if case .integerField(let v) = storage._foo {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._foo = .integerField(newValue)
      } else {
        _uniqueStorage()._foo = .None
      }
    }
  }

  public var stringField: String? {
    get {
      if let storage = _storage {
        if case .stringField(let v) = storage._foo {
          return v
        }
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._foo = .stringField(newValue)
      } else {
        _uniqueStorage()._foo = .None
      }
    }
  }

  public var _foo: OneOf_Foo {
    get {return _storage?._foo ?? .None}
    set {
      _uniqueStorage()._foo = newValue
    }
  }

  public init() {}

  public init(i: Int32? = nil,
    msg: ProtobufUnittest_ForeignMessage? = nil,
    integerField: Int32? = nil,
    stringField: String? = nil)
  {
    let storage = _uniqueStorage()
    storage._i = i
    storage._msg = msg
    if let v = integerField {
      storage._foo = .integerField(v)
    }
    if let v = stringField {
      storage._foo = .stringField(v)
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage?.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {return _storage?.isEmpty ?? true}

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptimizedForSize) -> Bool {
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

  public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>, value: F.ValueType) {
    return _uniqueStorage().setExtensionValue(ext: ext, value: value)
  }

  public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) -> F.ValueType {
    return _storage?.getExtensionValue(ext: ext) ?? ext.defaultValue
  }
}

public struct ProtobufUnittest_TestRequiredOptimizedForSize: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestRequiredOptimizedForSize"}
  public var protoMessageName: String {return "TestRequiredOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "x": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "x": 1,
  ]}

  var unknown = ProtobufUnknownStorage()

  public var x: Int32 = 0

  public init() {}

  public init(x: Int32 = 0)
  {
    self.x = x
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRequiredField(fieldType: ProtobufInt32.self, value: &x)
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
    try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: x, protoFieldNumber: 1, protoFieldName: "x", jsonFieldName: "x", swiftFieldName: "x")
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if x != 0 {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestRequiredOptimizedForSize) -> Bool {
    if x != other.x {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

public struct ProtobufUnittest_TestOptionalOptimizedForSize: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestOptionalOptimizedForSize"}
  public var protoMessageName: String {return "TestOptionalOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "o": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "o": 1,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestOptionalOptimizedForSize
    var unknown = ProtobufUnknownStorage()
    var _o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeOptionalMessageField(fieldType: ProtobufUnittest_TestRequiredOptimizedForSize.self, value: &_o)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _o {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "o", jsonFieldName: "o", swiftFieldName: "o")
      }
      unknown.traverse(visitor: &visitor)
    }

    var isEmpty: Bool {
      if _o != nil {return false}
      if !unknown.isEmpty {return false}
      return true
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if (((_o != nil && !_o!.isEmpty) || (other._o != nil && !other._o!.isEmpty)) && (_o == nil || other._o == nil || _o! != other._o!)) {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._o = _o
      return clone
    }
  }

  private var _storage: _StorageClass?

  public var o: ProtobufUnittest_TestRequiredOptimizedForSize? {
    get {return _storage?._o}
    set {_uniqueStorage()._o = newValue}
  }

  public init() {}

  public init(o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil)
  {
    let storage = _uniqueStorage()
    storage._o = o
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage?.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {return _storage?.isEmpty ?? true}

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptionalOptimizedForSize) -> Bool {
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
}

public func ==(lhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo, rhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo) -> Bool {
  switch (lhs, rhs) {
  case (.integerField(let l), .integerField(let r)): return l == r
  case (.stringField(let l), .stringField(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension: Int32? {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension)}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension, value: newValue)}
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension2: ProtobufUnittest_TestRequiredOptimizedForSize? {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension2)}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension2, value: newValue)}
  }
}

let ProtobufUnittest_UnittestOptimizeFor_Extensions: ProtobufExtensionSet = [
  ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension,
  ProtobufUnittest_TestOptimizedForSize.Extensions.ProtobufUnittest_TestOptimizedForSize_testExtension2
]
