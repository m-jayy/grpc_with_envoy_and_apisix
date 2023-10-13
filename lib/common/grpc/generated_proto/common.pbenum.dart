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

class ActorType extends $pb.ProtobufEnum {
  static const ActorType ACTOR_TYPE_UNSPECIFIED = ActorType._(0, _omitEnumNames ? '' : 'ACTOR_TYPE_UNSPECIFIED');
  static const ActorType ACTOR_TYPE_SERVICE = ActorType._(1, _omitEnumNames ? '' : 'ACTOR_TYPE_SERVICE');
  static const ActorType ACTOR_TYPE_CRM_AGENT = ActorType._(2, _omitEnumNames ? '' : 'ACTOR_TYPE_CRM_AGENT');
  static const ActorType ACTOR_TYPE_CUSTOMER = ActorType._(3, _omitEnumNames ? '' : 'ACTOR_TYPE_CUSTOMER');

  static const $core.List<ActorType> values = <ActorType> [
    ACTOR_TYPE_UNSPECIFIED,
    ACTOR_TYPE_SERVICE,
    ACTOR_TYPE_CRM_AGENT,
    ACTOR_TYPE_CUSTOMER,
  ];

  static final $core.Map<$core.int, ActorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ActorType? valueOf($core.int value) => _byValue[value];

  const ActorType._($core.int v, $core.String n) : super(v, n);
}

class VersionComponent extends $pb.ProtobufEnum {
  static const VersionComponent VERSION_COMPONENT_UNSPECIFIED = VersionComponent._(0, _omitEnumNames ? '' : 'VERSION_COMPONENT_UNSPECIFIED');
  static const VersionComponent VERSION_COMPONENT_MAJOR = VersionComponent._(1, _omitEnumNames ? '' : 'VERSION_COMPONENT_MAJOR');
  static const VersionComponent VERSION_COMPONENT_MINOR = VersionComponent._(2, _omitEnumNames ? '' : 'VERSION_COMPONENT_MINOR');
  static const VersionComponent VERSION_COMPONENT_PATCH = VersionComponent._(3, _omitEnumNames ? '' : 'VERSION_COMPONENT_PATCH');

  static const $core.List<VersionComponent> values = <VersionComponent> [
    VERSION_COMPONENT_UNSPECIFIED,
    VERSION_COMPONENT_MAJOR,
    VERSION_COMPONENT_MINOR,
    VERSION_COMPONENT_PATCH,
  ];

  static final $core.Map<$core.int, VersionComponent> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VersionComponent? valueOf($core.int value) => _byValue[value];

  const VersionComponent._($core.int v, $core.String n) : super(v, n);
}

class Status extends $pb.ProtobufEnum {
  static const Status STATUS_UNSPECIFIED = Status._(0, _omitEnumNames ? '' : 'STATUS_UNSPECIFIED');
  static const Status STATUS_ACTIVE = Status._(1, _omitEnumNames ? '' : 'STATUS_ACTIVE');
  static const Status STATUS_INACTIVE = Status._(2, _omitEnumNames ? '' : 'STATUS_INACTIVE');

  static const $core.List<Status> values = <Status> [
    STATUS_UNSPECIFIED,
    STATUS_ACTIVE,
    STATUS_INACTIVE,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
