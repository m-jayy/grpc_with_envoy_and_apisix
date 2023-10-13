//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart';
import 'google/protobuf/field_mask.pb.dart' as $0;
import 'google/protobuf/timestamp.pb.dart' as $2;
import 'google/protobuf/wrappers.pb.dart' as $1;

export 'common.pbenum.dart';

class IdRequest extends $pb.GeneratedMessage {
  factory IdRequest({
    $core.String? id,
    $0.FieldMask? fieldMask,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fieldMask != null) {
      $result.fieldMask = fieldMask;
    }
    return $result;
  }
  IdRequest._() : super();
  factory IdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.FieldMask>(2, _omitFieldNames ? '' : 'fieldMask', subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IdRequest clone() => IdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IdRequest copyWith(void Function(IdRequest) updates) => super.copyWith((message) => updates(message as IdRequest)) as IdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IdRequest create() => IdRequest._();
  IdRequest createEmptyInstance() => create();
  static $pb.PbList<IdRequest> createRepeated() => $pb.PbList<IdRequest>();
  @$core.pragma('dart2js:noInline')
  static IdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdRequest>(create);
  static IdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.FieldMask get fieldMask => $_getN(1);
  @$pb.TagNumber(2)
  set fieldMask($0.FieldMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldMask() => clearField(2);
  @$pb.TagNumber(2)
  $0.FieldMask ensureFieldMask() => $_ensure(1);
}

class DeviceMetadata extends $pb.GeneratedMessage {
  factory DeviceMetadata({
    $core.String? location,
    $core.String? deviceFingerprint,
    $core.String? ip,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    if (deviceFingerprint != null) {
      $result.deviceFingerprint = deviceFingerprint;
    }
    if (ip != null) {
      $result.ip = ip;
    }
    return $result;
  }
  DeviceMetadata._() : super();
  factory DeviceMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'location')
    ..aOS(2, _omitFieldNames ? '' : 'deviceFingerprint')
    ..aOS(3, _omitFieldNames ? '' : 'ip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceMetadata clone() => DeviceMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceMetadata copyWith(void Function(DeviceMetadata) updates) => super.copyWith((message) => updates(message as DeviceMetadata)) as DeviceMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceMetadata create() => DeviceMetadata._();
  DeviceMetadata createEmptyInstance() => create();
  static $pb.PbList<DeviceMetadata> createRepeated() => $pb.PbList<DeviceMetadata>();
  @$core.pragma('dart2js:noInline')
  static DeviceMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceMetadata>(create);
  static DeviceMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get location => $_getSZ(0);
  @$pb.TagNumber(1)
  set location($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceFingerprint => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceFingerprint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceFingerprint() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ip => $_getSZ(2);
  @$pb.TagNumber(3)
  set ip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIp() => $_has(2);
  @$pb.TagNumber(3)
  void clearIp() => clearField(3);
}

class DeleteResponse extends $pb.GeneratedMessage {
  factory DeleteResponse({
    $core.int? recordsDeleted,
  }) {
    final $result = create();
    if (recordsDeleted != null) {
      $result.recordsDeleted = recordsDeleted;
    }
    return $result;
  }
  DeleteResponse._() : super();
  factory DeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'recordsDeleted', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteResponse clone() => DeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteResponse copyWith(void Function(DeleteResponse) updates) => super.copyWith((message) => updates(message as DeleteResponse)) as DeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteResponse create() => DeleteResponse._();
  DeleteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteResponse> createRepeated() => $pb.PbList<DeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResponse>(create);
  static DeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get recordsDeleted => $_getIZ(0);
  @$pb.TagNumber(1)
  set recordsDeleted($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordsDeleted() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordsDeleted() => clearField(1);
}

class CreateResponse extends $pb.GeneratedMessage {
  factory CreateResponse({
    $core.int? recordsCreated,
  }) {
    final $result = create();
    if (recordsCreated != null) {
      $result.recordsCreated = recordsCreated;
    }
    return $result;
  }
  CreateResponse._() : super();
  factory CreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'recordsCreated', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateResponse clone() => CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateResponse copyWith(void Function(CreateResponse) updates) => super.copyWith((message) => updates(message as CreateResponse)) as CreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  CreateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateResponse> createRepeated() => $pb.PbList<CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get recordsCreated => $_getIZ(0);
  @$pb.TagNumber(1)
  set recordsCreated($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordsCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordsCreated() => clearField(1);
}

class OperationStatus extends $pb.GeneratedMessage {
  factory OperationStatus({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  OperationStatus._() : super();
  factory OperationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationStatus clone() => OperationStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationStatus copyWith(void Function(OperationStatus) updates) => super.copyWith((message) => updates(message as OperationStatus)) as OperationStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationStatus create() => OperationStatus._();
  OperationStatus createEmptyInstance() => create();
  static $pb.PbList<OperationStatus> createRepeated() => $pb.PbList<OperationStatus>();
  @$core.pragma('dart2js:noInline')
  static OperationStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationStatus>(create);
  static OperationStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ActorMetadata extends $pb.GeneratedMessage {
  factory ActorMetadata({
    $1.StringValue? actor,
    ActorType? actorType,
    $2.Timestamp? time,
  }) {
    final $result = create();
    if (actor != null) {
      $result.actor = actor;
    }
    if (actorType != null) {
      $result.actorType = actorType;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  ActorMetadata._() : super();
  factory ActorMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActorMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActorMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..aOM<$1.StringValue>(1, _omitFieldNames ? '' : 'actor', subBuilder: $1.StringValue.create)
    ..e<ActorType>(2, _omitFieldNames ? '' : 'actorType', $pb.PbFieldType.OE, defaultOrMaker: ActorType.ACTOR_TYPE_UNSPECIFIED, valueOf: ActorType.valueOf, enumValues: ActorType.values)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'time', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActorMetadata clone() => ActorMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActorMetadata copyWith(void Function(ActorMetadata) updates) => super.copyWith((message) => updates(message as ActorMetadata)) as ActorMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorMetadata create() => ActorMetadata._();
  ActorMetadata createEmptyInstance() => create();
  static $pb.PbList<ActorMetadata> createRepeated() => $pb.PbList<ActorMetadata>();
  @$core.pragma('dart2js:noInline')
  static ActorMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActorMetadata>(create);
  static ActorMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $1.StringValue get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor($1.StringValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => clearField(1);
  @$pb.TagNumber(1)
  $1.StringValue ensureActor() => $_ensure(0);

  @$pb.TagNumber(2)
  ActorType get actorType => $_getN(1);
  @$pb.TagNumber(2)
  set actorType(ActorType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorType() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorType() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get time => $_getN(2);
  @$pb.TagNumber(3)
  set time($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureTime() => $_ensure(2);
}

class ListRequest extends $pb.GeneratedMessage {
  factory ListRequest({
    $0.FieldMask? fieldMask,
  }) {
    final $result = create();
    if (fieldMask != null) {
      $result.fieldMask = fieldMask;
    }
    return $result;
  }
  ListRequest._() : super();
  factory ListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'global.din.protocommon.service'), createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'fieldMask', subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRequest clone() => ListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRequest copyWith(void Function(ListRequest) updates) => super.copyWith((message) => updates(message as ListRequest)) as ListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRequest create() => ListRequest._();
  ListRequest createEmptyInstance() => create();
  static $pb.PbList<ListRequest> createRepeated() => $pb.PbList<ListRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRequest>(create);
  static ListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get fieldMask => $_getN(0);
  @$pb.TagNumber(1)
  set fieldMask($0.FieldMask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldMask() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldMask() => clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureFieldMask() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
