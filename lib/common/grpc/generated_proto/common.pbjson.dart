//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use actorTypeDescriptor instead')
const ActorType$json = {
  '1': 'ActorType',
  '2': [
    {'1': 'ACTOR_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'ACTOR_TYPE_SERVICE', '2': 1},
    {'1': 'ACTOR_TYPE_CRM_AGENT', '2': 2},
    {'1': 'ACTOR_TYPE_CUSTOMER', '2': 3},
  ],
};

/// Descriptor for `ActorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actorTypeDescriptor = $convert.base64Decode(
    'CglBY3RvclR5cGUSGgoWQUNUT1JfVFlQRV9VTlNQRUNJRklFRBAAEhYKEkFDVE9SX1RZUEVfU0'
    'VSVklDRRABEhgKFEFDVE9SX1RZUEVfQ1JNX0FHRU5UEAISFwoTQUNUT1JfVFlQRV9DVVNUT01F'
    'UhAD');

@$core.Deprecated('Use versionComponentDescriptor instead')
const VersionComponent$json = {
  '1': 'VersionComponent',
  '2': [
    {'1': 'VERSION_COMPONENT_UNSPECIFIED', '2': 0},
    {'1': 'VERSION_COMPONENT_MAJOR', '2': 1},
    {'1': 'VERSION_COMPONENT_MINOR', '2': 2},
    {'1': 'VERSION_COMPONENT_PATCH', '2': 3},
  ],
};

/// Descriptor for `VersionComponent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List versionComponentDescriptor = $convert.base64Decode(
    'ChBWZXJzaW9uQ29tcG9uZW50EiEKHVZFUlNJT05fQ09NUE9ORU5UX1VOU1BFQ0lGSUVEEAASGw'
    'oXVkVSU0lPTl9DT01QT05FTlRfTUFKT1IQARIbChdWRVJTSU9OX0NPTVBPTkVOVF9NSU5PUhAC'
    'EhsKF1ZFUlNJT05fQ09NUE9ORU5UX1BBVENIEAM=');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'STATUS_UNSPECIFIED', '2': 0},
    {'1': 'STATUS_ACTIVE', '2': 1},
    {'1': 'STATUS_INACTIVE', '2': 2},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSFgoSU1RBVFVTX1VOU1BFQ0lGSUVEEAASEQoNU1RBVFVTX0FDVElWRRABEhMKD1'
    'NUQVRVU19JTkFDVElWRRAC');

@$core.Deprecated('Use idRequestDescriptor instead')
const IdRequest$json = {
  '1': 'IdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'field_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'fieldMask'},
  ],
};

/// Descriptor for `IdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idRequestDescriptor = $convert.base64Decode(
    'CglJZFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEjkKCmZpZWxkX21hc2sYAiABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuRmllbGRNYXNrUglmaWVsZE1hc2s=');

@$core.Deprecated('Use deviceMetadataDescriptor instead')
const DeviceMetadata$json = {
  '1': 'DeviceMetadata',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 9, '10': 'location'},
    {'1': 'device_fingerprint', '3': 2, '4': 1, '5': 9, '10': 'deviceFingerprint'},
    {'1': 'ip', '3': 3, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `DeviceMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceMetadataDescriptor = $convert.base64Decode(
    'Cg5EZXZpY2VNZXRhZGF0YRIaCghsb2NhdGlvbhgBIAEoCVIIbG9jYXRpb24SLQoSZGV2aWNlX2'
    'ZpbmdlcnByaW50GAIgASgJUhFkZXZpY2VGaW5nZXJwcmludBIOCgJpcBgDIAEoCVICaXA=');

@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = {
  '1': 'DeleteResponse',
  '2': [
    {'1': 'records_deleted', '3': 1, '4': 1, '5': 13, '10': 'recordsDeleted'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode(
    'Cg5EZWxldGVSZXNwb25zZRInCg9yZWNvcmRzX2RlbGV0ZWQYASABKA1SDnJlY29yZHNEZWxldG'
    'Vk');

@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'records_created', '3': 1, '4': 1, '5': 13, '10': 'recordsCreated'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRInCg9yZWNvcmRzX2NyZWF0ZWQYASABKA1SDnJlY29yZHNDcmVhdG'
    'Vk');

@$core.Deprecated('Use operationStatusDescriptor instead')
const OperationStatus$json = {
  '1': 'OperationStatus',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `OperationStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationStatusDescriptor = $convert.base64Decode(
    'Cg9PcGVyYXRpb25TdGF0dXMSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use actorMetadataDescriptor instead')
const ActorMetadata$json = {
  '1': 'ActorMetadata',
  '2': [
    {'1': 'actor', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'actor'},
    {'1': 'actor_type', '3': 2, '4': 1, '5': 14, '6': '.global.din.protocommon.service.ActorType', '10': 'actorType'},
    {'1': 'time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
  ],
};

/// Descriptor for `ActorMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorMetadataDescriptor = $convert.base64Decode(
    'Cg1BY3Rvck1ldGFkYXRhEjIKBWFjdG9yGAEgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1'
    'ZhbHVlUgVhY3RvchJICgphY3Rvcl90eXBlGAIgASgOMikuZ2xvYmFsLmRpbi5wcm90b2NvbW1v'
    'bi5zZXJ2aWNlLkFjdG9yVHlwZVIJYWN0b3JUeXBlEi4KBHRpbWUYAyABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgR0aW1l');

@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'field_mask', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'fieldMask'},
  ],
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode(
    'CgtMaXN0UmVxdWVzdBI5CgpmaWVsZF9tYXNrGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZW'
    'xkTWFza1IJZmllbGRNYXNr');

