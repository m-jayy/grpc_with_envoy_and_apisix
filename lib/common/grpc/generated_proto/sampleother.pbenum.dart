//
//  Generated code. Do not modify.
//  source: sampleother.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SampleState extends $pb.ProtobufEnum {
  static const SampleState SAMPLE_STATE_UNSPECIFIED = SampleState._(0, _omitEnumNames ? '' : 'SAMPLE_STATE_UNSPECIFIED');
  static const SampleState SAMPLE_STATE_PENDING = SampleState._(1, _omitEnumNames ? '' : 'SAMPLE_STATE_PENDING');
  static const SampleState SAMPLE_STATE_IN_PROGRESS = SampleState._(2, _omitEnumNames ? '' : 'SAMPLE_STATE_IN_PROGRESS');
  static const SampleState SAMPLE_STATE_COMPLETE = SampleState._(3, _omitEnumNames ? '' : 'SAMPLE_STATE_COMPLETE');

  static const $core.List<SampleState> values = <SampleState> [
    SAMPLE_STATE_UNSPECIFIED,
    SAMPLE_STATE_PENDING,
    SAMPLE_STATE_IN_PROGRESS,
    SAMPLE_STATE_COMPLETE,
  ];

  static final $core.Map<$core.int, SampleState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SampleState? valueOf($core.int value) => _byValue[value];

  const SampleState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
