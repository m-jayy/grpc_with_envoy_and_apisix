//
//  Generated code. Do not modify.
//  source: sampleother.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sampleStateDescriptor instead')
const SampleState$json = {
  '1': 'SampleState',
  '2': [
    {'1': 'SAMPLE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'SAMPLE_STATE_PENDING', '2': 1},
    {'1': 'SAMPLE_STATE_IN_PROGRESS', '2': 2},
    {'1': 'SAMPLE_STATE_COMPLETE', '2': 3},
  ],
};

/// Descriptor for `SampleState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sampleStateDescriptor = $convert.base64Decode(
    'CgtTYW1wbGVTdGF0ZRIcChhTQU1QTEVfU1RBVEVfVU5TUEVDSUZJRUQQABIYChRTQU1QTEVfU1'
    'RBVEVfUEVORElORxABEhwKGFNBTVBMRV9TVEFURV9JTl9QUk9HUkVTUxACEhkKFVNBTVBMRV9T'
    'VEFURV9DT01QTEVURRAD');

@$core.Deprecated('Use getSamplesRequestDescriptor instead')
const GetSamplesRequest$json = {
  '1': 'GetSamplesRequest',
  '2': [
    {'1': 'sample_data', '3': 1, '4': 1, '5': 9, '10': 'sampleData'},
    {'1': 'sample_number', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'sampleNumber'},
  ],
};

/// Descriptor for `GetSamplesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSamplesRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTYW1wbGVzUmVxdWVzdBIfCgtzYW1wbGVfZGF0YRgBIAEoCVIKc2FtcGxlRGF0YRJACg'
    '1zYW1wbGVfbnVtYmVyGAIgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSDHNhbXBs'
    'ZU51bWJlcg==');

@$core.Deprecated('Use samplesResponseDescriptor instead')
const SamplesResponse$json = {
  '1': 'SamplesResponse',
  '2': [
    {'1': 'samples', '3': 1, '4': 3, '5': 11, '6': '.global.din.sample.service.Sample', '10': 'samples'},
  ],
};

/// Descriptor for `SamplesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List samplesResponseDescriptor = $convert.base64Decode(
    'Cg9TYW1wbGVzUmVzcG9uc2USOwoHc2FtcGxlcxgBIAMoCzIhLmdsb2JhbC5kaW4uc2FtcGxlLn'
    'NlcnZpY2UuU2FtcGxlUgdzYW1wbGVz');

@$core.Deprecated('Use sampleResponseDescriptor instead')
const SampleResponse$json = {
  '1': 'SampleResponse',
  '2': [
    {'1': 'sample', '3': 1, '4': 1, '5': 11, '6': '.global.din.sample.service.Sample', '10': 'sample'},
  ],
};

/// Descriptor for `SampleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sampleResponseDescriptor = $convert.base64Decode(
    'Cg5TYW1wbGVSZXNwb25zZRI5CgZzYW1wbGUYASABKAsyIS5nbG9iYWwuZGluLnNhbXBsZS5zZX'
    'J2aWNlLlNhbXBsZVIGc2FtcGxl');

@$core.Deprecated('Use sampleDescriptor instead')
const Sample$json = {
  '1': 'Sample',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'sample_data', '3': 2, '4': 1, '5': 9, '10': 'sampleData'},
    {'1': 'sample_number', '3': 3, '4': 1, '5': 5, '10': 'sampleNumber'},
    {'1': 'sample_state', '3': 4, '4': 1, '5': 14, '6': '.global.din.sample.service.SampleState', '10': 'sampleState'},
    {'1': 'sample_opt_data', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'sampleOptData'},
    {'1': 'metadata_map', '3': 6, '4': 3, '5': 11, '6': '.global.din.sample.service.Sample.MetadataMapEntry', '10': 'metadataMap'},
    {'1': 'metadata_struct', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'metadataStruct'},
  ],
  '3': [Sample_MetadataMapEntry$json],
};

@$core.Deprecated('Use sampleDescriptor instead')
const Sample_MetadataMapEntry$json = {
  '1': 'MetadataMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Sample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sampleDescriptor = $convert.base64Decode(
    'CgZTYW1wbGUSDgoCaWQYASABKAlSAmlkEh8KC3NhbXBsZV9kYXRhGAIgASgJUgpzYW1wbGVEYX'
    'RhEiMKDXNhbXBsZV9udW1iZXIYAyABKAVSDHNhbXBsZU51bWJlchJJCgxzYW1wbGVfc3RhdGUY'
    'BCABKA4yJi5nbG9iYWwuZGluLnNhbXBsZS5zZXJ2aWNlLlNhbXBsZVN0YXRlUgtzYW1wbGVTdG'
    'F0ZRJECg9zYW1wbGVfb3B0X2RhdGEYBSABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFs'
    'dWVSDXNhbXBsZU9wdERhdGESVQoMbWV0YWRhdGFfbWFwGAYgAygLMjIuZ2xvYmFsLmRpbi5zYW'
    '1wbGUuc2VydmljZS5TYW1wbGUuTWV0YWRhdGFNYXBFbnRyeVILbWV0YWRhdGFNYXASQAoPbWV0'
    'YWRhdGFfc3RydWN0GAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIObWV0YWRhdGFTdH'
    'J1Y3QaPgoQTWV0YWRhdGFNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEo'
    'CVIFdmFsdWU6AjgB');

