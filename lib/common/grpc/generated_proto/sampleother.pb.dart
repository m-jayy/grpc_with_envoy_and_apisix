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

import 'google/protobuf/struct.pb.dart' as $1;
import 'google/protobuf/wrappers.pb.dart' as $0;
import 'sampleother.pbenum.dart';

export 'sampleother.pbenum.dart';

class GetSamplesRequest extends $pb.GeneratedMessage {
  factory GetSamplesRequest({
    $core.String? sampleData,
    $0.Int32Value? sampleNumber,
  }) {
    final $result = create();
    if (sampleData != null) {
      $result.sampleData = sampleData;
    }
    if (sampleNumber != null) {
      $result.sampleNumber = sampleNumber;
    }
    return $result;
  }
  GetSamplesRequest._() : super();
  factory GetSamplesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSamplesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSamplesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.sample.service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sampleData')
    ..aOM<$0.Int32Value>(2, _omitFieldNames ? '' : 'sampleNumber', subBuilder: $0.Int32Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSamplesRequest clone() => GetSamplesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSamplesRequest copyWith(void Function(GetSamplesRequest) updates) => super.copyWith((message) => updates(message as GetSamplesRequest)) as GetSamplesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSamplesRequest create() => GetSamplesRequest._();
  GetSamplesRequest createEmptyInstance() => create();
  static $pb.PbList<GetSamplesRequest> createRepeated() => $pb.PbList<GetSamplesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSamplesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSamplesRequest>(create);
  static GetSamplesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sampleData => $_getSZ(0);
  @$pb.TagNumber(1)
  set sampleData($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSampleData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSampleData() => clearField(1);

  @$pb.TagNumber(2)
  $0.Int32Value get sampleNumber => $_getN(1);
  @$pb.TagNumber(2)
  set sampleNumber($0.Int32Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSampleNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampleNumber() => clearField(2);
  @$pb.TagNumber(2)
  $0.Int32Value ensureSampleNumber() => $_ensure(1);
}

class SamplesResponse extends $pb.GeneratedMessage {
  factory SamplesResponse({
    $core.Iterable<Sample>? samples,
  }) {
    final $result = create();
    if (samples != null) {
      $result.samples.addAll(samples);
    }
    return $result;
  }
  SamplesResponse._() : super();
  factory SamplesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SamplesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SamplesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.sample.service'), createEmptyInstance: create)
    ..pc<Sample>(1, _omitFieldNames ? '' : 'samples', $pb.PbFieldType.PM, subBuilder: Sample.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SamplesResponse clone() => SamplesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SamplesResponse copyWith(void Function(SamplesResponse) updates) => super.copyWith((message) => updates(message as SamplesResponse)) as SamplesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SamplesResponse create() => SamplesResponse._();
  SamplesResponse createEmptyInstance() => create();
  static $pb.PbList<SamplesResponse> createRepeated() => $pb.PbList<SamplesResponse>();
  @$core.pragma('dart2js:noInline')
  static SamplesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SamplesResponse>(create);
  static SamplesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Sample> get samples => $_getList(0);
}

class SampleResponse extends $pb.GeneratedMessage {
  factory SampleResponse({
    Sample? sample,
  }) {
    final $result = create();
    if (sample != null) {
      $result.sample = sample;
    }
    return $result;
  }
  SampleResponse._() : super();
  factory SampleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SampleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SampleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.sample.service'), createEmptyInstance: create)
    ..aOM<Sample>(1, _omitFieldNames ? '' : 'sample', subBuilder: Sample.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SampleResponse clone() => SampleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SampleResponse copyWith(void Function(SampleResponse) updates) => super.copyWith((message) => updates(message as SampleResponse)) as SampleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SampleResponse create() => SampleResponse._();
  SampleResponse createEmptyInstance() => create();
  static $pb.PbList<SampleResponse> createRepeated() => $pb.PbList<SampleResponse>();
  @$core.pragma('dart2js:noInline')
  static SampleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SampleResponse>(create);
  static SampleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Sample get sample => $_getN(0);
  @$pb.TagNumber(1)
  set sample(Sample v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSample() => $_has(0);
  @$pb.TagNumber(1)
  void clearSample() => clearField(1);
  @$pb.TagNumber(1)
  Sample ensureSample() => $_ensure(0);
}

class Sample extends $pb.GeneratedMessage {
  factory Sample({
    $core.String? id,
    $core.String? sampleData,
    $core.int? sampleNumber,
    SampleState? sampleState,
    $0.StringValue? sampleOptData,
    $core.Map<$core.String, $core.String>? metadataMap,
    $1.Struct? metadataStruct,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sampleData != null) {
      $result.sampleData = sampleData;
    }
    if (sampleNumber != null) {
      $result.sampleNumber = sampleNumber;
    }
    if (sampleState != null) {
      $result.sampleState = sampleState;
    }
    if (sampleOptData != null) {
      $result.sampleOptData = sampleOptData;
    }
    if (metadataMap != null) {
      $result.metadataMap.addAll(metadataMap);
    }
    if (metadataStruct != null) {
      $result.metadataStruct = metadataStruct;
    }
    return $result;
  }
  Sample._() : super();
  factory Sample.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sample.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Sample', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.sample.service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sampleData')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sampleNumber', $pb.PbFieldType.O3)
    ..e<SampleState>(4, _omitFieldNames ? '' : 'sampleState', $pb.PbFieldType.OE, defaultOrMaker: SampleState.SAMPLE_STATE_UNSPECIFIED, valueOf: SampleState.valueOf, enumValues: SampleState.values)
    ..aOM<$0.StringValue>(5, _omitFieldNames ? '' : 'sampleOptData', subBuilder: $0.StringValue.create)
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'metadataMap', entryClassName: 'Sample.MetadataMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('global.din.sample.service'))
    ..aOM<$1.Struct>(7, _omitFieldNames ? '' : 'metadataStruct', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sample clone() => Sample()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sample copyWith(void Function(Sample) updates) => super.copyWith((message) => updates(message as Sample)) as Sample;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Sample create() => Sample._();
  Sample createEmptyInstance() => create();
  static $pb.PbList<Sample> createRepeated() => $pb.PbList<Sample>();
  @$core.pragma('dart2js:noInline')
  static Sample getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sample>(create);
  static Sample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sampleData => $_getSZ(1);
  @$pb.TagNumber(2)
  set sampleData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSampleData() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampleData() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sampleNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set sampleNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSampleNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSampleNumber() => clearField(3);

  @$pb.TagNumber(4)
  SampleState get sampleState => $_getN(3);
  @$pb.TagNumber(4)
  set sampleState(SampleState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSampleState() => $_has(3);
  @$pb.TagNumber(4)
  void clearSampleState() => clearField(4);

  @$pb.TagNumber(5)
  $0.StringValue get sampleOptData => $_getN(4);
  @$pb.TagNumber(5)
  set sampleOptData($0.StringValue v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSampleOptData() => $_has(4);
  @$pb.TagNumber(5)
  void clearSampleOptData() => clearField(5);
  @$pb.TagNumber(5)
  $0.StringValue ensureSampleOptData() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get metadataMap => $_getMap(5);

  @$pb.TagNumber(7)
  $1.Struct get metadataStruct => $_getN(6);
  @$pb.TagNumber(7)
  set metadataStruct($1.Struct v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMetadataStruct() => $_has(6);
  @$pb.TagNumber(7)
  void clearMetadataStruct() => clearField(7);
  @$pb.TagNumber(7)
  $1.Struct ensureMetadataStruct() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
