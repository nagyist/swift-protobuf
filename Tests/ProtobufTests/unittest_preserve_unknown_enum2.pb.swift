/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_preserve_unknown_enum2.proto
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

import Foundation
import Protobuf


public enum Proto2PreserveUnknownEnumUnittest_MyEnum: ProtobufEnum {
  public typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2

  public init() {
    self = .foo
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .foo
    case 1: self = .bar
    case 2: self = .baz
    default: return nil
    }
  }

  public init?(name: String) {
    switch name {
    case "foo": self = .foo
    case "bar": self = .bar
    case "baz": self = .baz
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "FOO": self = .foo
    case "BAR": self = .bar
    case "BAZ": self = .baz
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "FOO": self = .foo
    case "BAR": self = .bar
    case "BAZ": self = .baz
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .foo: return "\"FOO\""
      case .bar: return "\"BAR\""
      case .baz: return "\"BAZ\""
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .foo: return ".foo"
      case .bar: return ".bar"
      case .baz: return ".baz"
      }
    }
  }

}

public struct Proto2PreserveUnknownEnumUnittest_MyMessage: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Proto2PreserveUnknownEnumUnittest_MyMessage"}
  public var protoMessageName: String {return "MyMessage"}
  public var protoPackageName: String {return "proto2_preserve_unknown_enum_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "e": 1,
    "repeatedE": 2,
    "repeatedPackedE": 3,
    "repeatedPackedUnexpectedE": 4,
    "oneofE1": 5,
    "oneofE2": 6,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "e": 1,
    "repeated_e": 2,
    "repeated_packed_e": 3,
    "repeated_packed_unexpected_e": 4,
    "oneof_e_1": 5,
    "oneof_e_2": 6,
  ]}

  var unknown = ProtobufUnknownStorage()

  public enum OneOf_O: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case oneofE1(Proto2PreserveUnknownEnumUnittest_MyEnum)
    case oneofE2(Proto2PreserveUnknownEnumUnittest_MyEnum)
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
      case 5:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        handled = try setter.decodeOptionalField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        if let value = value, handled {
          self = .oneofE1(value)
        }
      case 6:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        handled = try setter.decodeOptionalField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        if let value = value, handled {
          self = .oneofE2(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .oneofE1(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, protoFieldNumber: 5, protoFieldName: "oneof_e_1", jsonFieldName: "oneofE1", swiftFieldName: "oneofE1")
        }
      case .oneofE2(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, protoFieldNumber: 6, protoFieldName: "oneof_e_2", jsonFieldName: "oneofE2", swiftFieldName: "oneofE2")
        }
      case .None:
        break
      }
    }

    public var isEmpty: Bool {return self == .None}
  }

  public var e: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil

  public var repeatedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  public var repeatedPackedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  ///   not packed
  public var repeatedPackedUnexpectedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  public var oneofE1: Proto2PreserveUnknownEnumUnittest_MyEnum? {
    get {
      if case .oneofE1(let v) = o {
        return v
      }
      return nil
    }
    set {
      if let newValue = newValue {
        o = .oneofE1(newValue)
      } else {
        o = .None
      }
    }
  }

  public var o: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O = .None

  public var oneofE2: Proto2PreserveUnknownEnumUnittest_MyEnum? {
    get {
      if case .oneofE2(let v) = o {
        return v
      }
      return nil
    }
    set {
      if let newValue = newValue {
        o = .oneofE2(newValue)
      } else {
        o = .None
      }
    }
  }

  public init() {}

  public init(e: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil,
    repeatedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = [],
    repeatedPackedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = [],
    repeatedPackedUnexpectedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = [],
    oneofE1: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil,
    oneofE2: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil)
  {
    self.e = e
    if !repeatedE.isEmpty {
      self.repeatedE = repeatedE
    }
    if !repeatedPackedE.isEmpty {
      self.repeatedPackedE = repeatedPackedE
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      self.repeatedPackedUnexpectedE = repeatedPackedUnexpectedE
    }
    if let v = oneofE1 {
      self.o = .oneofE1(v)
    }
    if let v = oneofE2 {
      self.o = .oneofE2(v)
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeOptionalField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &e)
    case 2: handled = try setter.decodeRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedE)
    case 3: handled = try setter.decodePackedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedPackedE)
    case 4: handled = try setter.decodeRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedPackedUnexpectedE)
    case 5, 6:
      handled = try o.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
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
    if let v = e {
      try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, protoFieldNumber: 1, protoFieldName: "e", jsonFieldName: "e", swiftFieldName: "e")
    }
    if !repeatedE.isEmpty {
      try visitor.visitRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedE, protoFieldNumber: 2, protoFieldName: "repeated_e", jsonFieldName: "repeatedE", swiftFieldName: "repeatedE")
    }
    if !repeatedPackedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedPackedE, protoFieldNumber: 3, protoFieldName: "repeated_packed_e", jsonFieldName: "repeatedPackedE", swiftFieldName: "repeatedPackedE")
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedPackedUnexpectedE, protoFieldNumber: 4, protoFieldName: "repeated_packed_unexpected_e", jsonFieldName: "repeatedPackedUnexpectedE", swiftFieldName: "repeatedPackedUnexpectedE")
    }
    try o.traverse(visitor: &visitor, start: 5, end: 7)
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if e != nil {return false}
    if !repeatedE.isEmpty {return false}
    if !repeatedPackedE.isEmpty {return false}
    if !repeatedPackedUnexpectedE.isEmpty {return false}
    if !o.isEmpty {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: Proto2PreserveUnknownEnumUnittest_MyMessage) -> Bool {
    if ((e != nil || other.e != nil) && (e == nil || other.e == nil || e! != other.e!)) {return false}
    if repeatedE != other.repeatedE {return false}
    if repeatedPackedE != other.repeatedPackedE {return false}
    if repeatedPackedUnexpectedE != other.repeatedPackedUnexpectedE {return false}
    if o != other.o {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

public func ==(lhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O, rhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O) -> Bool {
  switch (lhs, rhs) {
  case (.oneofE1(let l), .oneofE1(let r)): return l == r
  case (.oneofE2(let l), .oneofE2(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}
