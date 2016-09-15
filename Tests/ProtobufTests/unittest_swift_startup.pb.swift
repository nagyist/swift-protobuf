/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_startup.proto
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


public struct ProtobufObjcUnittest_TestObjCStartupMessage: ProtobufGeneratedMessage, ProtobufExtensibleMessage {
  public var swiftClassName: String {return "ProtobufObjcUnittest_TestObjCStartupMessage"}
  public var protoMessageName: String {return "TestObjCStartupMessage"}
  public var protoPackageName: String {return "protobuf_objc_unittest"}
  public var jsonFieldNames: [String: Int] {return [:]}
  public var protoFieldNames: [String: Int] {return [:]}

  var unknown = ProtobufUnknownStorage()

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    var handled = false
    if (1 <= protoFieldNumber && protoFieldNumber < 536870912) {
      handled = try setter.decodeExtensionField(values: &extensionFieldValues, messageType: ProtobufObjcUnittest_TestObjCStartupMessage.self, protoFieldNumber: protoFieldNumber)
    } else {
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try extensionFieldValues.traverse(visitor: &visitor, start: 1, end: 536870912)
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if !unknown.isEmpty {return false}
    if !extensionFieldValues.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufObjcUnittest_TestObjCStartupMessage) -> Bool {
    if unknown != other.unknown {return false}
    if extensionFieldValues != other.extensionFieldValues {return false}
    return true
  }

  private var extensionFieldValues = ProtobufExtensionFieldValueSet()

  public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufObjcUnittest_TestObjCStartupMessage>, value: F.ValueType) {
    extensionFieldValues[ext.protoFieldNumber] = ext.set(value: value)
  }

  public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufObjcUnittest_TestObjCStartupMessage>) -> F.ValueType {
    if let fieldValue = extensionFieldValues[ext.protoFieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }
}

public struct ProtobufObjcUnittest_TestObjCStartupNested: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufObjcUnittest_TestObjCStartupNested"}
  public var protoMessageName: String {return "TestObjCStartupNested"}
  public var protoPackageName: String {return "protobuf_objc_unittest"}
  public var jsonFieldNames: [String: Int] {return [:]}
  public var protoFieldNames: [String: Int] {return [:]}

  var unknown = ProtobufUnknownStorage()

  struct Extensions {

    static let ProtobufObjcUnittest_TestObjCStartupMessage_nestedStringExtension = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufString>, ProtobufObjcUnittest_TestObjCStartupMessage>(protoFieldNumber: 3, protoFieldName: "nested_string_extension", jsonFieldName: "nestedStringExtension", swiftFieldName: "ProtobufObjcUnittest_TestObjCStartupNested_nestedStringExtension", defaultValue: nil)
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try unknown.decodeField(setter: &setter)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufObjcUnittest_TestObjCStartupNested) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}

///   Singular
let ProtobufObjcUnittest_TestObjCStartupMessage_optionalInt32Extension = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufInt32>, ProtobufObjcUnittest_TestObjCStartupMessage>(protoFieldNumber: 1, protoFieldName: "optional_int32_extension", jsonFieldName: "optionalInt32Extension", swiftFieldName: "optionalInt32Extension", defaultValue: nil)

let ProtobufObjcUnittest_TestObjCStartupMessage_repeatedInt32Extension = ProtobufGenericMessageExtension<ProtobufRepeatedField<ProtobufInt32>, ProtobufObjcUnittest_TestObjCStartupMessage>(protoFieldNumber: 2, protoFieldName: "repeated_int32_extension", jsonFieldName: "repeatedInt32Extension", swiftFieldName: "repeatedInt32Extension", defaultValue: [])

extension ProtobufObjcUnittest_TestObjCStartupMessage {
  var ProtobufObjcUnittest_TestObjCStartupNested_nestedStringExtension: String? {
    get {return getExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupNested.Extensions.ProtobufObjcUnittest_TestObjCStartupMessage_nestedStringExtension)}
    set {setExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupNested.Extensions.ProtobufObjcUnittest_TestObjCStartupMessage_nestedStringExtension, value: newValue)}
  }
}

extension ProtobufObjcUnittest_TestObjCStartupMessage {
  ///   Singular
  var optionalInt32Extension: Int32? {
    get {return getExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupMessage_optionalInt32Extension)}
    set {setExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupMessage_optionalInt32Extension, value: newValue)}
  }
}

extension ProtobufObjcUnittest_TestObjCStartupMessage {
  var repeatedInt32Extension: [Int32] {
    get {return getExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupMessage_repeatedInt32Extension)}
    set {setExtensionValue(ext: ProtobufObjcUnittest_TestObjCStartupMessage_repeatedInt32Extension, value: newValue)}
  }
}

let ProtobufObjcUnittest_UnittestSwiftStartup_Extensions: ProtobufExtensionSet = [
  ProtobufObjcUnittest_TestObjCStartupMessage_optionalInt32Extension,
  ProtobufObjcUnittest_TestObjCStartupMessage_repeatedInt32Extension,
  ProtobufObjcUnittest_TestObjCStartupNested.Extensions.ProtobufObjcUnittest_TestObjCStartupMessage_nestedStringExtension
]
