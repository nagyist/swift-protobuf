/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_import_lite.proto
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
// 
//  This is like unittest_import.proto but with optimize_for = LITE_RUNTIME.

import Foundation
import Protobuf


public enum ProtobufUnittestImport_ImportEnumLite: ProtobufEnum {
  public typealias RawValue = Int
  case importLiteFoo // = 7
  case importLiteBar // = 8
  case importLiteBaz // = 9

  public init() {
    self = .importLiteFoo
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 7: self = .importLiteFoo
    case 8: self = .importLiteBar
    case 9: self = .importLiteBaz
    default: return nil
    }
  }

  public init?(name: String) {
    switch name {
    case "importLiteFoo": self = .importLiteFoo
    case "importLiteBar": self = .importLiteBar
    case "importLiteBaz": self = .importLiteBaz
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "IMPORT_LITE_FOO": self = .importLiteFoo
    case "IMPORT_LITE_BAR": self = .importLiteBar
    case "IMPORT_LITE_BAZ": self = .importLiteBaz
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "IMPORT_LITE_FOO": self = .importLiteFoo
    case "IMPORT_LITE_BAR": self = .importLiteBar
    case "IMPORT_LITE_BAZ": self = .importLiteBaz
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .importLiteFoo: return 7
      case .importLiteBar: return 8
      case .importLiteBaz: return 9
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .importLiteFoo: return "\"IMPORT_LITE_FOO\""
      case .importLiteBar: return "\"IMPORT_LITE_BAR\""
      case .importLiteBaz: return "\"IMPORT_LITE_BAZ\""
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .importLiteFoo: return ".importLiteFoo"
      case .importLiteBar: return ".importLiteBar"
      case .importLiteBaz: return ".importLiteBaz"
      }
    }
  }

}

public struct ProtobufUnittestImport_ImportMessageLite: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittestImport_ImportMessageLite"}
  public var protoMessageName: String {return "ImportMessageLite"}
  public var protoPackageName: String {return "protobuf_unittest_import"}
  public var jsonFieldNames: [String: Int] {return [
    "d": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "d": 1,
  ]}

  var unknown = ProtobufUnknownStorage()

  public var d: Int32? = nil

  public init() {}

  public init(d: Int32? = nil)
  {
    self.d = d
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &d)
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
    if let v = d {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "d", jsonFieldName: "d", swiftFieldName: "d")
    }
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if d != nil {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittestImport_ImportMessageLite) -> Bool {
    if ((d != nil || other.d != nil) && (d == nil || other.d == nil || d! != other.d!)) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
