class Input$CharacterFilter {
  factory Input$CharacterFilter({
    String? bio,
    String? bio_neq,
    String? chronologicalInformation,
    String? chronologicalInformation_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? image,
    String? image_neq,
    String? name,
    String? name_neq,
    String? personalInformation,
    String? personalInformation_neq,
    String? physicalDescription,
    String? physicalDescription_neq,
    String? politicalInformation,
    String? politicalInformation_neq,
    String? q,
  }) =>
      Input$CharacterFilter._({
        if (bio != null) r'bio': bio,
        if (bio_neq != null) r'bio_neq': bio_neq,
        if (chronologicalInformation != null)
          r'chronologicalInformation': chronologicalInformation,
        if (chronologicalInformation_neq != null)
          r'chronologicalInformation_neq': chronologicalInformation_neq,
        if (id != null) r'id': id,
        if (id_neq != null) r'id_neq': id_neq,
        if (ids != null) r'ids': ids,
        if (image != null) r'image': image,
        if (image_neq != null) r'image_neq': image_neq,
        if (name != null) r'name': name,
        if (name_neq != null) r'name_neq': name_neq,
        if (personalInformation != null)
          r'personalInformation': personalInformation,
        if (personalInformation_neq != null)
          r'personalInformation_neq': personalInformation_neq,
        if (physicalDescription != null)
          r'physicalDescription': physicalDescription,
        if (physicalDescription_neq != null)
          r'physicalDescription_neq': physicalDescription_neq,
        if (politicalInformation != null)
          r'politicalInformation': politicalInformation,
        if (politicalInformation_neq != null)
          r'politicalInformation_neq': politicalInformation_neq,
        if (q != null) r'q': q,
      });

  Input$CharacterFilter._(this._$data);

  factory Input$CharacterFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bio')) {
      final l$bio = data['bio'];
      result$data['bio'] = (l$bio as String?);
    }
    if (data.containsKey('bio_neq')) {
      final l$bio_neq = data['bio_neq'];
      result$data['bio_neq'] = (l$bio_neq as String?);
    }
    if (data.containsKey('chronologicalInformation')) {
      final l$chronologicalInformation = data['chronologicalInformation'];
      result$data['chronologicalInformation'] =
          (l$chronologicalInformation as String?);
    }
    if (data.containsKey('chronologicalInformation_neq')) {
      final l$chronologicalInformation_neq =
          data['chronologicalInformation_neq'];
      result$data['chronologicalInformation_neq'] =
          (l$chronologicalInformation_neq as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('id_neq')) {
      final l$id_neq = data['id_neq'];
      result$data['id_neq'] = (l$id_neq as String?);
    }
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    if (data.containsKey('image_neq')) {
      final l$image_neq = data['image_neq'];
      result$data['image_neq'] = (l$image_neq as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('name_neq')) {
      final l$name_neq = data['name_neq'];
      result$data['name_neq'] = (l$name_neq as String?);
    }
    if (data.containsKey('personalInformation')) {
      final l$personalInformation = data['personalInformation'];
      result$data['personalInformation'] = (l$personalInformation as String?);
    }
    if (data.containsKey('personalInformation_neq')) {
      final l$personalInformation_neq = data['personalInformation_neq'];
      result$data['personalInformation_neq'] =
          (l$personalInformation_neq as String?);
    }
    if (data.containsKey('physicalDescription')) {
      final l$physicalDescription = data['physicalDescription'];
      result$data['physicalDescription'] = (l$physicalDescription as String?);
    }
    if (data.containsKey('physicalDescription_neq')) {
      final l$physicalDescription_neq = data['physicalDescription_neq'];
      result$data['physicalDescription_neq'] =
          (l$physicalDescription_neq as String?);
    }
    if (data.containsKey('politicalInformation')) {
      final l$politicalInformation = data['politicalInformation'];
      result$data['politicalInformation'] = (l$politicalInformation as String?);
    }
    if (data.containsKey('politicalInformation_neq')) {
      final l$politicalInformation_neq = data['politicalInformation_neq'];
      result$data['politicalInformation_neq'] =
          (l$politicalInformation_neq as String?);
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    return Input$CharacterFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bio => (_$data['bio'] as String?);
  String? get bio_neq => (_$data['bio_neq'] as String?);
  String? get chronologicalInformation =>
      (_$data['chronologicalInformation'] as String?);
  String? get chronologicalInformation_neq =>
      (_$data['chronologicalInformation_neq'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get id_neq => (_$data['id_neq'] as String?);
  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  String? get image => (_$data['image'] as String?);
  String? get image_neq => (_$data['image_neq'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get name_neq => (_$data['name_neq'] as String?);
  String? get personalInformation => (_$data['personalInformation'] as String?);
  String? get personalInformation_neq =>
      (_$data['personalInformation_neq'] as String?);
  String? get physicalDescription => (_$data['physicalDescription'] as String?);
  String? get physicalDescription_neq =>
      (_$data['physicalDescription_neq'] as String?);
  String? get politicalInformation =>
      (_$data['politicalInformation'] as String?);
  String? get politicalInformation_neq =>
      (_$data['politicalInformation_neq'] as String?);
  String? get q => (_$data['q'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bio')) {
      final l$bio = bio;
      result$data['bio'] = l$bio;
    }
    if (_$data.containsKey('bio_neq')) {
      final l$bio_neq = bio_neq;
      result$data['bio_neq'] = l$bio_neq;
    }
    if (_$data.containsKey('chronologicalInformation')) {
      final l$chronologicalInformation = chronologicalInformation;
      result$data['chronologicalInformation'] = l$chronologicalInformation;
    }
    if (_$data.containsKey('chronologicalInformation_neq')) {
      final l$chronologicalInformation_neq = chronologicalInformation_neq;
      result$data['chronologicalInformation_neq'] =
          l$chronologicalInformation_neq;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('id_neq')) {
      final l$id_neq = id_neq;
      result$data['id_neq'] = l$id_neq;
    }
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    if (_$data.containsKey('image_neq')) {
      final l$image_neq = image_neq;
      result$data['image_neq'] = l$image_neq;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('name_neq')) {
      final l$name_neq = name_neq;
      result$data['name_neq'] = l$name_neq;
    }
    if (_$data.containsKey('personalInformation')) {
      final l$personalInformation = personalInformation;
      result$data['personalInformation'] = l$personalInformation;
    }
    if (_$data.containsKey('personalInformation_neq')) {
      final l$personalInformation_neq = personalInformation_neq;
      result$data['personalInformation_neq'] = l$personalInformation_neq;
    }
    if (_$data.containsKey('physicalDescription')) {
      final l$physicalDescription = physicalDescription;
      result$data['physicalDescription'] = l$physicalDescription;
    }
    if (_$data.containsKey('physicalDescription_neq')) {
      final l$physicalDescription_neq = physicalDescription_neq;
      result$data['physicalDescription_neq'] = l$physicalDescription_neq;
    }
    if (_$data.containsKey('politicalInformation')) {
      final l$politicalInformation = politicalInformation;
      result$data['politicalInformation'] = l$politicalInformation;
    }
    if (_$data.containsKey('politicalInformation_neq')) {
      final l$politicalInformation_neq = politicalInformation_neq;
      result$data['politicalInformation_neq'] = l$politicalInformation_neq;
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    return result$data;
  }

  CopyWith$Input$CharacterFilter<Input$CharacterFilter> get copyWith =>
      CopyWith$Input$CharacterFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CharacterFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (_$data.containsKey('bio') != other._$data.containsKey('bio')) {
      return false;
    }
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$bio_neq = bio_neq;
    final lOther$bio_neq = other.bio_neq;
    if (_$data.containsKey('bio_neq') != other._$data.containsKey('bio_neq')) {
      return false;
    }
    if (l$bio_neq != lOther$bio_neq) {
      return false;
    }
    final l$chronologicalInformation = chronologicalInformation;
    final lOther$chronologicalInformation = other.chronologicalInformation;
    if (_$data.containsKey('chronologicalInformation') !=
        other._$data.containsKey('chronologicalInformation')) {
      return false;
    }
    if (l$chronologicalInformation != lOther$chronologicalInformation) {
      return false;
    }
    final l$chronologicalInformation_neq = chronologicalInformation_neq;
    final lOther$chronologicalInformation_neq =
        other.chronologicalInformation_neq;
    if (_$data.containsKey('chronologicalInformation_neq') !=
        other._$data.containsKey('chronologicalInformation_neq')) {
      return false;
    }
    if (l$chronologicalInformation_neq != lOther$chronologicalInformation_neq) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$id_neq = id_neq;
    final lOther$id_neq = other.id_neq;
    if (_$data.containsKey('id_neq') != other._$data.containsKey('id_neq')) {
      return false;
    }
    if (l$id_neq != lOther$id_neq) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$image_neq = image_neq;
    final lOther$image_neq = other.image_neq;
    if (_$data.containsKey('image_neq') !=
        other._$data.containsKey('image_neq')) {
      return false;
    }
    if (l$image_neq != lOther$image_neq) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$name_neq = name_neq;
    final lOther$name_neq = other.name_neq;
    if (_$data.containsKey('name_neq') !=
        other._$data.containsKey('name_neq')) {
      return false;
    }
    if (l$name_neq != lOther$name_neq) {
      return false;
    }
    final l$personalInformation = personalInformation;
    final lOther$personalInformation = other.personalInformation;
    if (_$data.containsKey('personalInformation') !=
        other._$data.containsKey('personalInformation')) {
      return false;
    }
    if (l$personalInformation != lOther$personalInformation) {
      return false;
    }
    final l$personalInformation_neq = personalInformation_neq;
    final lOther$personalInformation_neq = other.personalInformation_neq;
    if (_$data.containsKey('personalInformation_neq') !=
        other._$data.containsKey('personalInformation_neq')) {
      return false;
    }
    if (l$personalInformation_neq != lOther$personalInformation_neq) {
      return false;
    }
    final l$physicalDescription = physicalDescription;
    final lOther$physicalDescription = other.physicalDescription;
    if (_$data.containsKey('physicalDescription') !=
        other._$data.containsKey('physicalDescription')) {
      return false;
    }
    if (l$physicalDescription != lOther$physicalDescription) {
      return false;
    }
    final l$physicalDescription_neq = physicalDescription_neq;
    final lOther$physicalDescription_neq = other.physicalDescription_neq;
    if (_$data.containsKey('physicalDescription_neq') !=
        other._$data.containsKey('physicalDescription_neq')) {
      return false;
    }
    if (l$physicalDescription_neq != lOther$physicalDescription_neq) {
      return false;
    }
    final l$politicalInformation = politicalInformation;
    final lOther$politicalInformation = other.politicalInformation;
    if (_$data.containsKey('politicalInformation') !=
        other._$data.containsKey('politicalInformation')) {
      return false;
    }
    if (l$politicalInformation != lOther$politicalInformation) {
      return false;
    }
    final l$politicalInformation_neq = politicalInformation_neq;
    final lOther$politicalInformation_neq = other.politicalInformation_neq;
    if (_$data.containsKey('politicalInformation_neq') !=
        other._$data.containsKey('politicalInformation_neq')) {
      return false;
    }
    if (l$politicalInformation_neq != lOther$politicalInformation_neq) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bio = bio;
    final l$bio_neq = bio_neq;
    final l$chronologicalInformation = chronologicalInformation;
    final l$chronologicalInformation_neq = chronologicalInformation_neq;
    final l$id = id;
    final l$id_neq = id_neq;
    final l$ids = ids;
    final l$image = image;
    final l$image_neq = image_neq;
    final l$name = name;
    final l$name_neq = name_neq;
    final l$personalInformation = personalInformation;
    final l$personalInformation_neq = personalInformation_neq;
    final l$physicalDescription = physicalDescription;
    final l$physicalDescription_neq = physicalDescription_neq;
    final l$politicalInformation = politicalInformation;
    final l$politicalInformation_neq = politicalInformation_neq;
    final l$q = q;
    return Object.hashAll([
      _$data.containsKey('bio') ? l$bio : const {},
      _$data.containsKey('bio_neq') ? l$bio_neq : const {},
      _$data.containsKey('chronologicalInformation')
          ? l$chronologicalInformation
          : const {},
      _$data.containsKey('chronologicalInformation_neq')
          ? l$chronologicalInformation_neq
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('id_neq') ? l$id_neq : const {},
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('image') ? l$image : const {},
      _$data.containsKey('image_neq') ? l$image_neq : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('name_neq') ? l$name_neq : const {},
      _$data.containsKey('personalInformation')
          ? l$personalInformation
          : const {},
      _$data.containsKey('personalInformation_neq')
          ? l$personalInformation_neq
          : const {},
      _$data.containsKey('physicalDescription')
          ? l$physicalDescription
          : const {},
      _$data.containsKey('physicalDescription_neq')
          ? l$physicalDescription_neq
          : const {},
      _$data.containsKey('politicalInformation')
          ? l$politicalInformation
          : const {},
      _$data.containsKey('politicalInformation_neq')
          ? l$politicalInformation_neq
          : const {},
      _$data.containsKey('q') ? l$q : const {},
    ]);
  }
}

abstract class CopyWith$Input$CharacterFilter<TRes> {
  factory CopyWith$Input$CharacterFilter(
    Input$CharacterFilter instance,
    TRes Function(Input$CharacterFilter) then,
  ) = _CopyWithImpl$Input$CharacterFilter;

  factory CopyWith$Input$CharacterFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CharacterFilter;

  TRes call({
    String? bio,
    String? bio_neq,
    String? chronologicalInformation,
    String? chronologicalInformation_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? image,
    String? image_neq,
    String? name,
    String? name_neq,
    String? personalInformation,
    String? personalInformation_neq,
    String? physicalDescription,
    String? physicalDescription_neq,
    String? politicalInformation,
    String? politicalInformation_neq,
    String? q,
  });
}

class _CopyWithImpl$Input$CharacterFilter<TRes>
    implements CopyWith$Input$CharacterFilter<TRes> {
  _CopyWithImpl$Input$CharacterFilter(
    this._instance,
    this._then,
  );

  final Input$CharacterFilter _instance;

  final TRes Function(Input$CharacterFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bio = _undefined,
    Object? bio_neq = _undefined,
    Object? chronologicalInformation = _undefined,
    Object? chronologicalInformation_neq = _undefined,
    Object? id = _undefined,
    Object? id_neq = _undefined,
    Object? ids = _undefined,
    Object? image = _undefined,
    Object? image_neq = _undefined,
    Object? name = _undefined,
    Object? name_neq = _undefined,
    Object? personalInformation = _undefined,
    Object? personalInformation_neq = _undefined,
    Object? physicalDescription = _undefined,
    Object? physicalDescription_neq = _undefined,
    Object? politicalInformation = _undefined,
    Object? politicalInformation_neq = _undefined,
    Object? q = _undefined,
  }) =>
      _then(Input$CharacterFilter._({
        ..._instance._$data,
        if (bio != _undefined) 'bio': (bio as String?),
        if (bio_neq != _undefined) 'bio_neq': (bio_neq as String?),
        if (chronologicalInformation != _undefined)
          'chronologicalInformation': (chronologicalInformation as String?),
        if (chronologicalInformation_neq != _undefined)
          'chronologicalInformation_neq':
              (chronologicalInformation_neq as String?),
        if (id != _undefined) 'id': (id as String?),
        if (id_neq != _undefined) 'id_neq': (id_neq as String?),
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (image != _undefined) 'image': (image as String?),
        if (image_neq != _undefined) 'image_neq': (image_neq as String?),
        if (name != _undefined) 'name': (name as String?),
        if (name_neq != _undefined) 'name_neq': (name_neq as String?),
        if (personalInformation != _undefined)
          'personalInformation': (personalInformation as String?),
        if (personalInformation_neq != _undefined)
          'personalInformation_neq': (personalInformation_neq as String?),
        if (physicalDescription != _undefined)
          'physicalDescription': (physicalDescription as String?),
        if (physicalDescription_neq != _undefined)
          'physicalDescription_neq': (physicalDescription_neq as String?),
        if (politicalInformation != _undefined)
          'politicalInformation': (politicalInformation as String?),
        if (politicalInformation_neq != _undefined)
          'politicalInformation_neq': (politicalInformation_neq as String?),
        if (q != _undefined) 'q': (q as String?),
      }));
}

class _CopyWithStubImpl$Input$CharacterFilter<TRes>
    implements CopyWith$Input$CharacterFilter<TRes> {
  _CopyWithStubImpl$Input$CharacterFilter(this._res);

  TRes _res;

  call({
    String? bio,
    String? bio_neq,
    String? chronologicalInformation,
    String? chronologicalInformation_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? image,
    String? image_neq,
    String? name,
    String? name_neq,
    String? personalInformation,
    String? personalInformation_neq,
    String? physicalDescription,
    String? physicalDescription_neq,
    String? politicalInformation,
    String? politicalInformation_neq,
    String? q,
  }) =>
      _res;
}

class Input$CharacterInput {
  factory Input$CharacterInput({
    required String bio,
    required String chronologicalInformation,
    required String image,
    String? name,
    required String personalInformation,
    required String physicalDescription,
    required String politicalInformation,
  }) =>
      Input$CharacterInput._({
        r'bio': bio,
        r'chronologicalInformation': chronologicalInformation,
        r'image': image,
        if (name != null) r'name': name,
        r'personalInformation': personalInformation,
        r'physicalDescription': physicalDescription,
        r'politicalInformation': politicalInformation,
      });

  Input$CharacterInput._(this._$data);

  factory Input$CharacterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bio = data['bio'];
    result$data['bio'] = (l$bio as String);
    final l$chronologicalInformation = data['chronologicalInformation'];
    result$data['chronologicalInformation'] =
        (l$chronologicalInformation as String);
    final l$image = data['image'];
    result$data['image'] = (l$image as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    final l$personalInformation = data['personalInformation'];
    result$data['personalInformation'] = (l$personalInformation as String);
    final l$physicalDescription = data['physicalDescription'];
    result$data['physicalDescription'] = (l$physicalDescription as String);
    final l$politicalInformation = data['politicalInformation'];
    result$data['politicalInformation'] = (l$politicalInformation as String);
    return Input$CharacterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get bio => (_$data['bio'] as String);
  String get chronologicalInformation =>
      (_$data['chronologicalInformation'] as String);
  String get image => (_$data['image'] as String);
  String? get name => (_$data['name'] as String?);
  String get personalInformation => (_$data['personalInformation'] as String);
  String get physicalDescription => (_$data['physicalDescription'] as String);
  String get politicalInformation => (_$data['politicalInformation'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bio = bio;
    result$data['bio'] = l$bio;
    final l$chronologicalInformation = chronologicalInformation;
    result$data['chronologicalInformation'] = l$chronologicalInformation;
    final l$image = image;
    result$data['image'] = l$image;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    final l$personalInformation = personalInformation;
    result$data['personalInformation'] = l$personalInformation;
    final l$physicalDescription = physicalDescription;
    result$data['physicalDescription'] = l$physicalDescription;
    final l$politicalInformation = politicalInformation;
    result$data['politicalInformation'] = l$politicalInformation;
    return result$data;
  }

  CopyWith$Input$CharacterInput<Input$CharacterInput> get copyWith =>
      CopyWith$Input$CharacterInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CharacterInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$chronologicalInformation = chronologicalInformation;
    final lOther$chronologicalInformation = other.chronologicalInformation;
    if (l$chronologicalInformation != lOther$chronologicalInformation) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$personalInformation = personalInformation;
    final lOther$personalInformation = other.personalInformation;
    if (l$personalInformation != lOther$personalInformation) {
      return false;
    }
    final l$physicalDescription = physicalDescription;
    final lOther$physicalDescription = other.physicalDescription;
    if (l$physicalDescription != lOther$physicalDescription) {
      return false;
    }
    final l$politicalInformation = politicalInformation;
    final lOther$politicalInformation = other.politicalInformation;
    if (l$politicalInformation != lOther$politicalInformation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bio = bio;
    final l$chronologicalInformation = chronologicalInformation;
    final l$image = image;
    final l$name = name;
    final l$personalInformation = personalInformation;
    final l$physicalDescription = physicalDescription;
    final l$politicalInformation = politicalInformation;
    return Object.hashAll([
      l$bio,
      l$chronologicalInformation,
      l$image,
      _$data.containsKey('name') ? l$name : const {},
      l$personalInformation,
      l$physicalDescription,
      l$politicalInformation,
    ]);
  }
}

abstract class CopyWith$Input$CharacterInput<TRes> {
  factory CopyWith$Input$CharacterInput(
    Input$CharacterInput instance,
    TRes Function(Input$CharacterInput) then,
  ) = _CopyWithImpl$Input$CharacterInput;

  factory CopyWith$Input$CharacterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CharacterInput;

  TRes call({
    String? bio,
    String? chronologicalInformation,
    String? image,
    String? name,
    String? personalInformation,
    String? physicalDescription,
    String? politicalInformation,
  });
}

class _CopyWithImpl$Input$CharacterInput<TRes>
    implements CopyWith$Input$CharacterInput<TRes> {
  _CopyWithImpl$Input$CharacterInput(
    this._instance,
    this._then,
  );

  final Input$CharacterInput _instance;

  final TRes Function(Input$CharacterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bio = _undefined,
    Object? chronologicalInformation = _undefined,
    Object? image = _undefined,
    Object? name = _undefined,
    Object? personalInformation = _undefined,
    Object? physicalDescription = _undefined,
    Object? politicalInformation = _undefined,
  }) =>
      _then(Input$CharacterInput._({
        ..._instance._$data,
        if (bio != _undefined && bio != null) 'bio': (bio as String),
        if (chronologicalInformation != _undefined &&
            chronologicalInformation != null)
          'chronologicalInformation': (chronologicalInformation as String),
        if (image != _undefined && image != null) 'image': (image as String),
        if (name != _undefined) 'name': (name as String?),
        if (personalInformation != _undefined && personalInformation != null)
          'personalInformation': (personalInformation as String),
        if (physicalDescription != _undefined && physicalDescription != null)
          'physicalDescription': (physicalDescription as String),
        if (politicalInformation != _undefined && politicalInformation != null)
          'politicalInformation': (politicalInformation as String),
      }));
}

class _CopyWithStubImpl$Input$CharacterInput<TRes>
    implements CopyWith$Input$CharacterInput<TRes> {
  _CopyWithStubImpl$Input$CharacterInput(this._res);

  TRes _res;

  call({
    String? bio,
    String? chronologicalInformation,
    String? image,
    String? name,
    String? personalInformation,
    String? physicalDescription,
    String? politicalInformation,
  }) =>
      _res;
}

class Input$EpisodeFilter {
  factory Input$EpisodeFilter({
    String? AnimatedBy,
    String? AnimatedBy_neq,
    String? DirectedBy,
    String? DirectedBy_neq,
    String? NumInSeason,
    String? NumInSeason_neq,
    String? OriginalAirDate,
    String? OriginalAirDate_neq,
    String? ProductionCode,
    String? ProductionCode_neq,
    String? Season,
    String? Season_neq,
    String? Title,
    String? Title_neq,
    String? Viewers,
    String? Viewers_neq,
    List<String?>? WrittenBy,
    List<String?>? WrittenBy_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
  }) =>
      Input$EpisodeFilter._({
        if (AnimatedBy != null) r'AnimatedBy': AnimatedBy,
        if (AnimatedBy_neq != null) r'AnimatedBy_neq': AnimatedBy_neq,
        if (DirectedBy != null) r'DirectedBy': DirectedBy,
        if (DirectedBy_neq != null) r'DirectedBy_neq': DirectedBy_neq,
        if (NumInSeason != null) r'NumInSeason': NumInSeason,
        if (NumInSeason_neq != null) r'NumInSeason_neq': NumInSeason_neq,
        if (OriginalAirDate != null) r'OriginalAirDate': OriginalAirDate,
        if (OriginalAirDate_neq != null)
          r'OriginalAirDate_neq': OriginalAirDate_neq,
        if (ProductionCode != null) r'ProductionCode': ProductionCode,
        if (ProductionCode_neq != null)
          r'ProductionCode_neq': ProductionCode_neq,
        if (Season != null) r'Season': Season,
        if (Season_neq != null) r'Season_neq': Season_neq,
        if (Title != null) r'Title': Title,
        if (Title_neq != null) r'Title_neq': Title_neq,
        if (Viewers != null) r'Viewers': Viewers,
        if (Viewers_neq != null) r'Viewers_neq': Viewers_neq,
        if (WrittenBy != null) r'WrittenBy': WrittenBy,
        if (WrittenBy_neq != null) r'WrittenBy_neq': WrittenBy_neq,
        if (id != null) r'id': id,
        if (id_neq != null) r'id_neq': id_neq,
        if (ids != null) r'ids': ids,
        if (q != null) r'q': q,
      });

  Input$EpisodeFilter._(this._$data);

  factory Input$EpisodeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AnimatedBy')) {
      final l$AnimatedBy = data['AnimatedBy'];
      result$data['AnimatedBy'] = (l$AnimatedBy as String?);
    }
    if (data.containsKey('AnimatedBy_neq')) {
      final l$AnimatedBy_neq = data['AnimatedBy_neq'];
      result$data['AnimatedBy_neq'] = (l$AnimatedBy_neq as String?);
    }
    if (data.containsKey('DirectedBy')) {
      final l$DirectedBy = data['DirectedBy'];
      result$data['DirectedBy'] = (l$DirectedBy as String?);
    }
    if (data.containsKey('DirectedBy_neq')) {
      final l$DirectedBy_neq = data['DirectedBy_neq'];
      result$data['DirectedBy_neq'] = (l$DirectedBy_neq as String?);
    }
    if (data.containsKey('NumInSeason')) {
      final l$NumInSeason = data['NumInSeason'];
      result$data['NumInSeason'] = (l$NumInSeason as String?);
    }
    if (data.containsKey('NumInSeason_neq')) {
      final l$NumInSeason_neq = data['NumInSeason_neq'];
      result$data['NumInSeason_neq'] = (l$NumInSeason_neq as String?);
    }
    if (data.containsKey('OriginalAirDate')) {
      final l$OriginalAirDate = data['OriginalAirDate'];
      result$data['OriginalAirDate'] = (l$OriginalAirDate as String?);
    }
    if (data.containsKey('OriginalAirDate_neq')) {
      final l$OriginalAirDate_neq = data['OriginalAirDate_neq'];
      result$data['OriginalAirDate_neq'] = (l$OriginalAirDate_neq as String?);
    }
    if (data.containsKey('ProductionCode')) {
      final l$ProductionCode = data['ProductionCode'];
      result$data['ProductionCode'] = (l$ProductionCode as String?);
    }
    if (data.containsKey('ProductionCode_neq')) {
      final l$ProductionCode_neq = data['ProductionCode_neq'];
      result$data['ProductionCode_neq'] = (l$ProductionCode_neq as String?);
    }
    if (data.containsKey('Season')) {
      final l$Season = data['Season'];
      result$data['Season'] = (l$Season as String?);
    }
    if (data.containsKey('Season_neq')) {
      final l$Season_neq = data['Season_neq'];
      result$data['Season_neq'] = (l$Season_neq as String?);
    }
    if (data.containsKey('Title')) {
      final l$Title = data['Title'];
      result$data['Title'] = (l$Title as String?);
    }
    if (data.containsKey('Title_neq')) {
      final l$Title_neq = data['Title_neq'];
      result$data['Title_neq'] = (l$Title_neq as String?);
    }
    if (data.containsKey('Viewers')) {
      final l$Viewers = data['Viewers'];
      result$data['Viewers'] = (l$Viewers as String?);
    }
    if (data.containsKey('Viewers_neq')) {
      final l$Viewers_neq = data['Viewers_neq'];
      result$data['Viewers_neq'] = (l$Viewers_neq as String?);
    }
    if (data.containsKey('WrittenBy')) {
      final l$WrittenBy = data['WrittenBy'];
      result$data['WrittenBy'] =
          (l$WrittenBy as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('WrittenBy_neq')) {
      final l$WrittenBy_neq = data['WrittenBy_neq'];
      result$data['WrittenBy_neq'] = (l$WrittenBy_neq as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('id_neq')) {
      final l$id_neq = data['id_neq'];
      result$data['id_neq'] = (l$id_neq as String?);
    }
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    return Input$EpisodeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get AnimatedBy => (_$data['AnimatedBy'] as String?);
  String? get AnimatedBy_neq => (_$data['AnimatedBy_neq'] as String?);
  String? get DirectedBy => (_$data['DirectedBy'] as String?);
  String? get DirectedBy_neq => (_$data['DirectedBy_neq'] as String?);
  String? get NumInSeason => (_$data['NumInSeason'] as String?);
  String? get NumInSeason_neq => (_$data['NumInSeason_neq'] as String?);
  String? get OriginalAirDate => (_$data['OriginalAirDate'] as String?);
  String? get OriginalAirDate_neq => (_$data['OriginalAirDate_neq'] as String?);
  String? get ProductionCode => (_$data['ProductionCode'] as String?);
  String? get ProductionCode_neq => (_$data['ProductionCode_neq'] as String?);
  String? get Season => (_$data['Season'] as String?);
  String? get Season_neq => (_$data['Season_neq'] as String?);
  String? get Title => (_$data['Title'] as String?);
  String? get Title_neq => (_$data['Title_neq'] as String?);
  String? get Viewers => (_$data['Viewers'] as String?);
  String? get Viewers_neq => (_$data['Viewers_neq'] as String?);
  List<String?>? get WrittenBy => (_$data['WrittenBy'] as List<String?>?);
  List<String?>? get WrittenBy_neq =>
      (_$data['WrittenBy_neq'] as List<String?>?);
  String? get id => (_$data['id'] as String?);
  String? get id_neq => (_$data['id_neq'] as String?);
  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  String? get q => (_$data['q'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AnimatedBy')) {
      final l$AnimatedBy = AnimatedBy;
      result$data['AnimatedBy'] = l$AnimatedBy;
    }
    if (_$data.containsKey('AnimatedBy_neq')) {
      final l$AnimatedBy_neq = AnimatedBy_neq;
      result$data['AnimatedBy_neq'] = l$AnimatedBy_neq;
    }
    if (_$data.containsKey('DirectedBy')) {
      final l$DirectedBy = DirectedBy;
      result$data['DirectedBy'] = l$DirectedBy;
    }
    if (_$data.containsKey('DirectedBy_neq')) {
      final l$DirectedBy_neq = DirectedBy_neq;
      result$data['DirectedBy_neq'] = l$DirectedBy_neq;
    }
    if (_$data.containsKey('NumInSeason')) {
      final l$NumInSeason = NumInSeason;
      result$data['NumInSeason'] = l$NumInSeason;
    }
    if (_$data.containsKey('NumInSeason_neq')) {
      final l$NumInSeason_neq = NumInSeason_neq;
      result$data['NumInSeason_neq'] = l$NumInSeason_neq;
    }
    if (_$data.containsKey('OriginalAirDate')) {
      final l$OriginalAirDate = OriginalAirDate;
      result$data['OriginalAirDate'] = l$OriginalAirDate;
    }
    if (_$data.containsKey('OriginalAirDate_neq')) {
      final l$OriginalAirDate_neq = OriginalAirDate_neq;
      result$data['OriginalAirDate_neq'] = l$OriginalAirDate_neq;
    }
    if (_$data.containsKey('ProductionCode')) {
      final l$ProductionCode = ProductionCode;
      result$data['ProductionCode'] = l$ProductionCode;
    }
    if (_$data.containsKey('ProductionCode_neq')) {
      final l$ProductionCode_neq = ProductionCode_neq;
      result$data['ProductionCode_neq'] = l$ProductionCode_neq;
    }
    if (_$data.containsKey('Season')) {
      final l$Season = Season;
      result$data['Season'] = l$Season;
    }
    if (_$data.containsKey('Season_neq')) {
      final l$Season_neq = Season_neq;
      result$data['Season_neq'] = l$Season_neq;
    }
    if (_$data.containsKey('Title')) {
      final l$Title = Title;
      result$data['Title'] = l$Title;
    }
    if (_$data.containsKey('Title_neq')) {
      final l$Title_neq = Title_neq;
      result$data['Title_neq'] = l$Title_neq;
    }
    if (_$data.containsKey('Viewers')) {
      final l$Viewers = Viewers;
      result$data['Viewers'] = l$Viewers;
    }
    if (_$data.containsKey('Viewers_neq')) {
      final l$Viewers_neq = Viewers_neq;
      result$data['Viewers_neq'] = l$Viewers_neq;
    }
    if (_$data.containsKey('WrittenBy')) {
      final l$WrittenBy = WrittenBy;
      result$data['WrittenBy'] = l$WrittenBy?.map((e) => e).toList();
    }
    if (_$data.containsKey('WrittenBy_neq')) {
      final l$WrittenBy_neq = WrittenBy_neq;
      result$data['WrittenBy_neq'] = l$WrittenBy_neq?.map((e) => e).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('id_neq')) {
      final l$id_neq = id_neq;
      result$data['id_neq'] = l$id_neq;
    }
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    return result$data;
  }

  CopyWith$Input$EpisodeFilter<Input$EpisodeFilter> get copyWith =>
      CopyWith$Input$EpisodeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EpisodeFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$AnimatedBy = AnimatedBy;
    final lOther$AnimatedBy = other.AnimatedBy;
    if (_$data.containsKey('AnimatedBy') !=
        other._$data.containsKey('AnimatedBy')) {
      return false;
    }
    if (l$AnimatedBy != lOther$AnimatedBy) {
      return false;
    }
    final l$AnimatedBy_neq = AnimatedBy_neq;
    final lOther$AnimatedBy_neq = other.AnimatedBy_neq;
    if (_$data.containsKey('AnimatedBy_neq') !=
        other._$data.containsKey('AnimatedBy_neq')) {
      return false;
    }
    if (l$AnimatedBy_neq != lOther$AnimatedBy_neq) {
      return false;
    }
    final l$DirectedBy = DirectedBy;
    final lOther$DirectedBy = other.DirectedBy;
    if (_$data.containsKey('DirectedBy') !=
        other._$data.containsKey('DirectedBy')) {
      return false;
    }
    if (l$DirectedBy != lOther$DirectedBy) {
      return false;
    }
    final l$DirectedBy_neq = DirectedBy_neq;
    final lOther$DirectedBy_neq = other.DirectedBy_neq;
    if (_$data.containsKey('DirectedBy_neq') !=
        other._$data.containsKey('DirectedBy_neq')) {
      return false;
    }
    if (l$DirectedBy_neq != lOther$DirectedBy_neq) {
      return false;
    }
    final l$NumInSeason = NumInSeason;
    final lOther$NumInSeason = other.NumInSeason;
    if (_$data.containsKey('NumInSeason') !=
        other._$data.containsKey('NumInSeason')) {
      return false;
    }
    if (l$NumInSeason != lOther$NumInSeason) {
      return false;
    }
    final l$NumInSeason_neq = NumInSeason_neq;
    final lOther$NumInSeason_neq = other.NumInSeason_neq;
    if (_$data.containsKey('NumInSeason_neq') !=
        other._$data.containsKey('NumInSeason_neq')) {
      return false;
    }
    if (l$NumInSeason_neq != lOther$NumInSeason_neq) {
      return false;
    }
    final l$OriginalAirDate = OriginalAirDate;
    final lOther$OriginalAirDate = other.OriginalAirDate;
    if (_$data.containsKey('OriginalAirDate') !=
        other._$data.containsKey('OriginalAirDate')) {
      return false;
    }
    if (l$OriginalAirDate != lOther$OriginalAirDate) {
      return false;
    }
    final l$OriginalAirDate_neq = OriginalAirDate_neq;
    final lOther$OriginalAirDate_neq = other.OriginalAirDate_neq;
    if (_$data.containsKey('OriginalAirDate_neq') !=
        other._$data.containsKey('OriginalAirDate_neq')) {
      return false;
    }
    if (l$OriginalAirDate_neq != lOther$OriginalAirDate_neq) {
      return false;
    }
    final l$ProductionCode = ProductionCode;
    final lOther$ProductionCode = other.ProductionCode;
    if (_$data.containsKey('ProductionCode') !=
        other._$data.containsKey('ProductionCode')) {
      return false;
    }
    if (l$ProductionCode != lOther$ProductionCode) {
      return false;
    }
    final l$ProductionCode_neq = ProductionCode_neq;
    final lOther$ProductionCode_neq = other.ProductionCode_neq;
    if (_$data.containsKey('ProductionCode_neq') !=
        other._$data.containsKey('ProductionCode_neq')) {
      return false;
    }
    if (l$ProductionCode_neq != lOther$ProductionCode_neq) {
      return false;
    }
    final l$Season = Season;
    final lOther$Season = other.Season;
    if (_$data.containsKey('Season') != other._$data.containsKey('Season')) {
      return false;
    }
    if (l$Season != lOther$Season) {
      return false;
    }
    final l$Season_neq = Season_neq;
    final lOther$Season_neq = other.Season_neq;
    if (_$data.containsKey('Season_neq') !=
        other._$data.containsKey('Season_neq')) {
      return false;
    }
    if (l$Season_neq != lOther$Season_neq) {
      return false;
    }
    final l$Title = Title;
    final lOther$Title = other.Title;
    if (_$data.containsKey('Title') != other._$data.containsKey('Title')) {
      return false;
    }
    if (l$Title != lOther$Title) {
      return false;
    }
    final l$Title_neq = Title_neq;
    final lOther$Title_neq = other.Title_neq;
    if (_$data.containsKey('Title_neq') !=
        other._$data.containsKey('Title_neq')) {
      return false;
    }
    if (l$Title_neq != lOther$Title_neq) {
      return false;
    }
    final l$Viewers = Viewers;
    final lOther$Viewers = other.Viewers;
    if (_$data.containsKey('Viewers') != other._$data.containsKey('Viewers')) {
      return false;
    }
    if (l$Viewers != lOther$Viewers) {
      return false;
    }
    final l$Viewers_neq = Viewers_neq;
    final lOther$Viewers_neq = other.Viewers_neq;
    if (_$data.containsKey('Viewers_neq') !=
        other._$data.containsKey('Viewers_neq')) {
      return false;
    }
    if (l$Viewers_neq != lOther$Viewers_neq) {
      return false;
    }
    final l$WrittenBy = WrittenBy;
    final lOther$WrittenBy = other.WrittenBy;
    if (_$data.containsKey('WrittenBy') !=
        other._$data.containsKey('WrittenBy')) {
      return false;
    }
    if (l$WrittenBy != null && lOther$WrittenBy != null) {
      if (l$WrittenBy.length != lOther$WrittenBy.length) {
        return false;
      }
      for (int i = 0; i < l$WrittenBy.length; i++) {
        final l$WrittenBy$entry = l$WrittenBy[i];
        final lOther$WrittenBy$entry = lOther$WrittenBy[i];
        if (l$WrittenBy$entry != lOther$WrittenBy$entry) {
          return false;
        }
      }
    } else if (l$WrittenBy != lOther$WrittenBy) {
      return false;
    }
    final l$WrittenBy_neq = WrittenBy_neq;
    final lOther$WrittenBy_neq = other.WrittenBy_neq;
    if (_$data.containsKey('WrittenBy_neq') !=
        other._$data.containsKey('WrittenBy_neq')) {
      return false;
    }
    if (l$WrittenBy_neq != null && lOther$WrittenBy_neq != null) {
      if (l$WrittenBy_neq.length != lOther$WrittenBy_neq.length) {
        return false;
      }
      for (int i = 0; i < l$WrittenBy_neq.length; i++) {
        final l$WrittenBy_neq$entry = l$WrittenBy_neq[i];
        final lOther$WrittenBy_neq$entry = lOther$WrittenBy_neq[i];
        if (l$WrittenBy_neq$entry != lOther$WrittenBy_neq$entry) {
          return false;
        }
      }
    } else if (l$WrittenBy_neq != lOther$WrittenBy_neq) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$id_neq = id_neq;
    final lOther$id_neq = other.id_neq;
    if (_$data.containsKey('id_neq') != other._$data.containsKey('id_neq')) {
      return false;
    }
    if (l$id_neq != lOther$id_neq) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AnimatedBy = AnimatedBy;
    final l$AnimatedBy_neq = AnimatedBy_neq;
    final l$DirectedBy = DirectedBy;
    final l$DirectedBy_neq = DirectedBy_neq;
    final l$NumInSeason = NumInSeason;
    final l$NumInSeason_neq = NumInSeason_neq;
    final l$OriginalAirDate = OriginalAirDate;
    final l$OriginalAirDate_neq = OriginalAirDate_neq;
    final l$ProductionCode = ProductionCode;
    final l$ProductionCode_neq = ProductionCode_neq;
    final l$Season = Season;
    final l$Season_neq = Season_neq;
    final l$Title = Title;
    final l$Title_neq = Title_neq;
    final l$Viewers = Viewers;
    final l$Viewers_neq = Viewers_neq;
    final l$WrittenBy = WrittenBy;
    final l$WrittenBy_neq = WrittenBy_neq;
    final l$id = id;
    final l$id_neq = id_neq;
    final l$ids = ids;
    final l$q = q;
    return Object.hashAll([
      _$data.containsKey('AnimatedBy') ? l$AnimatedBy : const {},
      _$data.containsKey('AnimatedBy_neq') ? l$AnimatedBy_neq : const {},
      _$data.containsKey('DirectedBy') ? l$DirectedBy : const {},
      _$data.containsKey('DirectedBy_neq') ? l$DirectedBy_neq : const {},
      _$data.containsKey('NumInSeason') ? l$NumInSeason : const {},
      _$data.containsKey('NumInSeason_neq') ? l$NumInSeason_neq : const {},
      _$data.containsKey('OriginalAirDate') ? l$OriginalAirDate : const {},
      _$data.containsKey('OriginalAirDate_neq')
          ? l$OriginalAirDate_neq
          : const {},
      _$data.containsKey('ProductionCode') ? l$ProductionCode : const {},
      _$data.containsKey('ProductionCode_neq')
          ? l$ProductionCode_neq
          : const {},
      _$data.containsKey('Season') ? l$Season : const {},
      _$data.containsKey('Season_neq') ? l$Season_neq : const {},
      _$data.containsKey('Title') ? l$Title : const {},
      _$data.containsKey('Title_neq') ? l$Title_neq : const {},
      _$data.containsKey('Viewers') ? l$Viewers : const {},
      _$data.containsKey('Viewers_neq') ? l$Viewers_neq : const {},
      _$data.containsKey('WrittenBy')
          ? l$WrittenBy == null
              ? null
              : Object.hashAll(l$WrittenBy.map((v) => v))
          : const {},
      _$data.containsKey('WrittenBy_neq')
          ? l$WrittenBy_neq == null
              ? null
              : Object.hashAll(l$WrittenBy_neq.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('id_neq') ? l$id_neq : const {},
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('q') ? l$q : const {},
    ]);
  }
}

abstract class CopyWith$Input$EpisodeFilter<TRes> {
  factory CopyWith$Input$EpisodeFilter(
    Input$EpisodeFilter instance,
    TRes Function(Input$EpisodeFilter) then,
  ) = _CopyWithImpl$Input$EpisodeFilter;

  factory CopyWith$Input$EpisodeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$EpisodeFilter;

  TRes call({
    String? AnimatedBy,
    String? AnimatedBy_neq,
    String? DirectedBy,
    String? DirectedBy_neq,
    String? NumInSeason,
    String? NumInSeason_neq,
    String? OriginalAirDate,
    String? OriginalAirDate_neq,
    String? ProductionCode,
    String? ProductionCode_neq,
    String? Season,
    String? Season_neq,
    String? Title,
    String? Title_neq,
    String? Viewers,
    String? Viewers_neq,
    List<String?>? WrittenBy,
    List<String?>? WrittenBy_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
  });
}

class _CopyWithImpl$Input$EpisodeFilter<TRes>
    implements CopyWith$Input$EpisodeFilter<TRes> {
  _CopyWithImpl$Input$EpisodeFilter(
    this._instance,
    this._then,
  );

  final Input$EpisodeFilter _instance;

  final TRes Function(Input$EpisodeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AnimatedBy = _undefined,
    Object? AnimatedBy_neq = _undefined,
    Object? DirectedBy = _undefined,
    Object? DirectedBy_neq = _undefined,
    Object? NumInSeason = _undefined,
    Object? NumInSeason_neq = _undefined,
    Object? OriginalAirDate = _undefined,
    Object? OriginalAirDate_neq = _undefined,
    Object? ProductionCode = _undefined,
    Object? ProductionCode_neq = _undefined,
    Object? Season = _undefined,
    Object? Season_neq = _undefined,
    Object? Title = _undefined,
    Object? Title_neq = _undefined,
    Object? Viewers = _undefined,
    Object? Viewers_neq = _undefined,
    Object? WrittenBy = _undefined,
    Object? WrittenBy_neq = _undefined,
    Object? id = _undefined,
    Object? id_neq = _undefined,
    Object? ids = _undefined,
    Object? q = _undefined,
  }) =>
      _then(Input$EpisodeFilter._({
        ..._instance._$data,
        if (AnimatedBy != _undefined) 'AnimatedBy': (AnimatedBy as String?),
        if (AnimatedBy_neq != _undefined)
          'AnimatedBy_neq': (AnimatedBy_neq as String?),
        if (DirectedBy != _undefined) 'DirectedBy': (DirectedBy as String?),
        if (DirectedBy_neq != _undefined)
          'DirectedBy_neq': (DirectedBy_neq as String?),
        if (NumInSeason != _undefined) 'NumInSeason': (NumInSeason as String?),
        if (NumInSeason_neq != _undefined)
          'NumInSeason_neq': (NumInSeason_neq as String?),
        if (OriginalAirDate != _undefined)
          'OriginalAirDate': (OriginalAirDate as String?),
        if (OriginalAirDate_neq != _undefined)
          'OriginalAirDate_neq': (OriginalAirDate_neq as String?),
        if (ProductionCode != _undefined)
          'ProductionCode': (ProductionCode as String?),
        if (ProductionCode_neq != _undefined)
          'ProductionCode_neq': (ProductionCode_neq as String?),
        if (Season != _undefined) 'Season': (Season as String?),
        if (Season_neq != _undefined) 'Season_neq': (Season_neq as String?),
        if (Title != _undefined) 'Title': (Title as String?),
        if (Title_neq != _undefined) 'Title_neq': (Title_neq as String?),
        if (Viewers != _undefined) 'Viewers': (Viewers as String?),
        if (Viewers_neq != _undefined) 'Viewers_neq': (Viewers_neq as String?),
        if (WrittenBy != _undefined) 'WrittenBy': (WrittenBy as List<String?>?),
        if (WrittenBy_neq != _undefined)
          'WrittenBy_neq': (WrittenBy_neq as List<String?>?),
        if (id != _undefined) 'id': (id as String?),
        if (id_neq != _undefined) 'id_neq': (id_neq as String?),
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (q != _undefined) 'q': (q as String?),
      }));
}

class _CopyWithStubImpl$Input$EpisodeFilter<TRes>
    implements CopyWith$Input$EpisodeFilter<TRes> {
  _CopyWithStubImpl$Input$EpisodeFilter(this._res);

  TRes _res;

  call({
    String? AnimatedBy,
    String? AnimatedBy_neq,
    String? DirectedBy,
    String? DirectedBy_neq,
    String? NumInSeason,
    String? NumInSeason_neq,
    String? OriginalAirDate,
    String? OriginalAirDate_neq,
    String? ProductionCode,
    String? ProductionCode_neq,
    String? Season,
    String? Season_neq,
    String? Title,
    String? Title_neq,
    String? Viewers,
    String? Viewers_neq,
    List<String?>? WrittenBy,
    List<String?>? WrittenBy_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
  }) =>
      _res;
}

class Input$EpisodeInput {
  factory Input$EpisodeInput({
    required String AnimatedBy,
    required String DirectedBy,
    required String NumInSeason,
    required String OriginalAirDate,
    required String ProductionCode,
    required String Season,
    required String Title,
    String? Viewers,
    required List<String?> WrittenBy,
  }) =>
      Input$EpisodeInput._({
        r'AnimatedBy': AnimatedBy,
        r'DirectedBy': DirectedBy,
        r'NumInSeason': NumInSeason,
        r'OriginalAirDate': OriginalAirDate,
        r'ProductionCode': ProductionCode,
        r'Season': Season,
        r'Title': Title,
        if (Viewers != null) r'Viewers': Viewers,
        r'WrittenBy': WrittenBy,
      });

  Input$EpisodeInput._(this._$data);

  factory Input$EpisodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$AnimatedBy = data['AnimatedBy'];
    result$data['AnimatedBy'] = (l$AnimatedBy as String);
    final l$DirectedBy = data['DirectedBy'];
    result$data['DirectedBy'] = (l$DirectedBy as String);
    final l$NumInSeason = data['NumInSeason'];
    result$data['NumInSeason'] = (l$NumInSeason as String);
    final l$OriginalAirDate = data['OriginalAirDate'];
    result$data['OriginalAirDate'] = (l$OriginalAirDate as String);
    final l$ProductionCode = data['ProductionCode'];
    result$data['ProductionCode'] = (l$ProductionCode as String);
    final l$Season = data['Season'];
    result$data['Season'] = (l$Season as String);
    final l$Title = data['Title'];
    result$data['Title'] = (l$Title as String);
    if (data.containsKey('Viewers')) {
      final l$Viewers = data['Viewers'];
      result$data['Viewers'] = (l$Viewers as String?);
    }
    final l$WrittenBy = data['WrittenBy'];
    result$data['WrittenBy'] =
        (l$WrittenBy as List<dynamic>).map((e) => (e as String?)).toList();
    return Input$EpisodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get AnimatedBy => (_$data['AnimatedBy'] as String);
  String get DirectedBy => (_$data['DirectedBy'] as String);
  String get NumInSeason => (_$data['NumInSeason'] as String);
  String get OriginalAirDate => (_$data['OriginalAirDate'] as String);
  String get ProductionCode => (_$data['ProductionCode'] as String);
  String get Season => (_$data['Season'] as String);
  String get Title => (_$data['Title'] as String);
  String? get Viewers => (_$data['Viewers'] as String?);
  List<String?> get WrittenBy => (_$data['WrittenBy'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$AnimatedBy = AnimatedBy;
    result$data['AnimatedBy'] = l$AnimatedBy;
    final l$DirectedBy = DirectedBy;
    result$data['DirectedBy'] = l$DirectedBy;
    final l$NumInSeason = NumInSeason;
    result$data['NumInSeason'] = l$NumInSeason;
    final l$OriginalAirDate = OriginalAirDate;
    result$data['OriginalAirDate'] = l$OriginalAirDate;
    final l$ProductionCode = ProductionCode;
    result$data['ProductionCode'] = l$ProductionCode;
    final l$Season = Season;
    result$data['Season'] = l$Season;
    final l$Title = Title;
    result$data['Title'] = l$Title;
    if (_$data.containsKey('Viewers')) {
      final l$Viewers = Viewers;
      result$data['Viewers'] = l$Viewers;
    }
    final l$WrittenBy = WrittenBy;
    result$data['WrittenBy'] = l$WrittenBy.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$EpisodeInput<Input$EpisodeInput> get copyWith =>
      CopyWith$Input$EpisodeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EpisodeInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$AnimatedBy = AnimatedBy;
    final lOther$AnimatedBy = other.AnimatedBy;
    if (l$AnimatedBy != lOther$AnimatedBy) {
      return false;
    }
    final l$DirectedBy = DirectedBy;
    final lOther$DirectedBy = other.DirectedBy;
    if (l$DirectedBy != lOther$DirectedBy) {
      return false;
    }
    final l$NumInSeason = NumInSeason;
    final lOther$NumInSeason = other.NumInSeason;
    if (l$NumInSeason != lOther$NumInSeason) {
      return false;
    }
    final l$OriginalAirDate = OriginalAirDate;
    final lOther$OriginalAirDate = other.OriginalAirDate;
    if (l$OriginalAirDate != lOther$OriginalAirDate) {
      return false;
    }
    final l$ProductionCode = ProductionCode;
    final lOther$ProductionCode = other.ProductionCode;
    if (l$ProductionCode != lOther$ProductionCode) {
      return false;
    }
    final l$Season = Season;
    final lOther$Season = other.Season;
    if (l$Season != lOther$Season) {
      return false;
    }
    final l$Title = Title;
    final lOther$Title = other.Title;
    if (l$Title != lOther$Title) {
      return false;
    }
    final l$Viewers = Viewers;
    final lOther$Viewers = other.Viewers;
    if (_$data.containsKey('Viewers') != other._$data.containsKey('Viewers')) {
      return false;
    }
    if (l$Viewers != lOther$Viewers) {
      return false;
    }
    final l$WrittenBy = WrittenBy;
    final lOther$WrittenBy = other.WrittenBy;
    if (l$WrittenBy.length != lOther$WrittenBy.length) {
      return false;
    }
    for (int i = 0; i < l$WrittenBy.length; i++) {
      final l$WrittenBy$entry = l$WrittenBy[i];
      final lOther$WrittenBy$entry = lOther$WrittenBy[i];
      if (l$WrittenBy$entry != lOther$WrittenBy$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AnimatedBy = AnimatedBy;
    final l$DirectedBy = DirectedBy;
    final l$NumInSeason = NumInSeason;
    final l$OriginalAirDate = OriginalAirDate;
    final l$ProductionCode = ProductionCode;
    final l$Season = Season;
    final l$Title = Title;
    final l$Viewers = Viewers;
    final l$WrittenBy = WrittenBy;
    return Object.hashAll([
      l$AnimatedBy,
      l$DirectedBy,
      l$NumInSeason,
      l$OriginalAirDate,
      l$ProductionCode,
      l$Season,
      l$Title,
      _$data.containsKey('Viewers') ? l$Viewers : const {},
      Object.hashAll(l$WrittenBy.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$EpisodeInput<TRes> {
  factory CopyWith$Input$EpisodeInput(
    Input$EpisodeInput instance,
    TRes Function(Input$EpisodeInput) then,
  ) = _CopyWithImpl$Input$EpisodeInput;

  factory CopyWith$Input$EpisodeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EpisodeInput;

  TRes call({
    String? AnimatedBy,
    String? DirectedBy,
    String? NumInSeason,
    String? OriginalAirDate,
    String? ProductionCode,
    String? Season,
    String? Title,
    String? Viewers,
    List<String?>? WrittenBy,
  });
}

class _CopyWithImpl$Input$EpisodeInput<TRes>
    implements CopyWith$Input$EpisodeInput<TRes> {
  _CopyWithImpl$Input$EpisodeInput(
    this._instance,
    this._then,
  );

  final Input$EpisodeInput _instance;

  final TRes Function(Input$EpisodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AnimatedBy = _undefined,
    Object? DirectedBy = _undefined,
    Object? NumInSeason = _undefined,
    Object? OriginalAirDate = _undefined,
    Object? ProductionCode = _undefined,
    Object? Season = _undefined,
    Object? Title = _undefined,
    Object? Viewers = _undefined,
    Object? WrittenBy = _undefined,
  }) =>
      _then(Input$EpisodeInput._({
        ..._instance._$data,
        if (AnimatedBy != _undefined && AnimatedBy != null)
          'AnimatedBy': (AnimatedBy as String),
        if (DirectedBy != _undefined && DirectedBy != null)
          'DirectedBy': (DirectedBy as String),
        if (NumInSeason != _undefined && NumInSeason != null)
          'NumInSeason': (NumInSeason as String),
        if (OriginalAirDate != _undefined && OriginalAirDate != null)
          'OriginalAirDate': (OriginalAirDate as String),
        if (ProductionCode != _undefined && ProductionCode != null)
          'ProductionCode': (ProductionCode as String),
        if (Season != _undefined && Season != null)
          'Season': (Season as String),
        if (Title != _undefined && Title != null) 'Title': (Title as String),
        if (Viewers != _undefined) 'Viewers': (Viewers as String?),
        if (WrittenBy != _undefined && WrittenBy != null)
          'WrittenBy': (WrittenBy as List<String?>),
      }));
}

class _CopyWithStubImpl$Input$EpisodeInput<TRes>
    implements CopyWith$Input$EpisodeInput<TRes> {
  _CopyWithStubImpl$Input$EpisodeInput(this._res);

  TRes _res;

  call({
    String? AnimatedBy,
    String? DirectedBy,
    String? NumInSeason,
    String? OriginalAirDate,
    String? ProductionCode,
    String? Season,
    String? Title,
    String? Viewers,
    List<String?>? WrittenBy,
  }) =>
      _res;
}

class Input$InfoFilter {
  factory Input$InfoFilter({
    String? creators,
    String? creators_neq,
    List<String?>? genres,
    List<String?>? genres_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
    String? synopsis,
    String? synopsis_neq,
    String? yearsAired,
    String? yearsAired_neq,
  }) =>
      Input$InfoFilter._({
        if (creators != null) r'creators': creators,
        if (creators_neq != null) r'creators_neq': creators_neq,
        if (genres != null) r'genres': genres,
        if (genres_neq != null) r'genres_neq': genres_neq,
        if (id != null) r'id': id,
        if (id_neq != null) r'id_neq': id_neq,
        if (ids != null) r'ids': ids,
        if (q != null) r'q': q,
        if (synopsis != null) r'synopsis': synopsis,
        if (synopsis_neq != null) r'synopsis_neq': synopsis_neq,
        if (yearsAired != null) r'yearsAired': yearsAired,
        if (yearsAired_neq != null) r'yearsAired_neq': yearsAired_neq,
      });

  Input$InfoFilter._(this._$data);

  factory Input$InfoFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('creators')) {
      final l$creators = data['creators'];
      result$data['creators'] = (l$creators as String?);
    }
    if (data.containsKey('creators_neq')) {
      final l$creators_neq = data['creators_neq'];
      result$data['creators_neq'] = (l$creators_neq as String?);
    }
    if (data.containsKey('genres')) {
      final l$genres = data['genres'];
      result$data['genres'] =
          (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('genres_neq')) {
      final l$genres_neq = data['genres_neq'];
      result$data['genres_neq'] =
          (l$genres_neq as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('id_neq')) {
      final l$id_neq = data['id_neq'];
      result$data['id_neq'] = (l$id_neq as String?);
    }
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    if (data.containsKey('synopsis')) {
      final l$synopsis = data['synopsis'];
      result$data['synopsis'] = (l$synopsis as String?);
    }
    if (data.containsKey('synopsis_neq')) {
      final l$synopsis_neq = data['synopsis_neq'];
      result$data['synopsis_neq'] = (l$synopsis_neq as String?);
    }
    if (data.containsKey('yearsAired')) {
      final l$yearsAired = data['yearsAired'];
      result$data['yearsAired'] = (l$yearsAired as String?);
    }
    if (data.containsKey('yearsAired_neq')) {
      final l$yearsAired_neq = data['yearsAired_neq'];
      result$data['yearsAired_neq'] = (l$yearsAired_neq as String?);
    }
    return Input$InfoFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get creators => (_$data['creators'] as String?);
  String? get creators_neq => (_$data['creators_neq'] as String?);
  List<String?>? get genres => (_$data['genres'] as List<String?>?);
  List<String?>? get genres_neq => (_$data['genres_neq'] as List<String?>?);
  String? get id => (_$data['id'] as String?);
  String? get id_neq => (_$data['id_neq'] as String?);
  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  String? get q => (_$data['q'] as String?);
  String? get synopsis => (_$data['synopsis'] as String?);
  String? get synopsis_neq => (_$data['synopsis_neq'] as String?);
  String? get yearsAired => (_$data['yearsAired'] as String?);
  String? get yearsAired_neq => (_$data['yearsAired_neq'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('creators')) {
      final l$creators = creators;
      result$data['creators'] = l$creators;
    }
    if (_$data.containsKey('creators_neq')) {
      final l$creators_neq = creators_neq;
      result$data['creators_neq'] = l$creators_neq;
    }
    if (_$data.containsKey('genres')) {
      final l$genres = genres;
      result$data['genres'] = l$genres?.map((e) => e).toList();
    }
    if (_$data.containsKey('genres_neq')) {
      final l$genres_neq = genres_neq;
      result$data['genres_neq'] = l$genres_neq?.map((e) => e).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('id_neq')) {
      final l$id_neq = id_neq;
      result$data['id_neq'] = l$id_neq;
    }
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    if (_$data.containsKey('synopsis')) {
      final l$synopsis = synopsis;
      result$data['synopsis'] = l$synopsis;
    }
    if (_$data.containsKey('synopsis_neq')) {
      final l$synopsis_neq = synopsis_neq;
      result$data['synopsis_neq'] = l$synopsis_neq;
    }
    if (_$data.containsKey('yearsAired')) {
      final l$yearsAired = yearsAired;
      result$data['yearsAired'] = l$yearsAired;
    }
    if (_$data.containsKey('yearsAired_neq')) {
      final l$yearsAired_neq = yearsAired_neq;
      result$data['yearsAired_neq'] = l$yearsAired_neq;
    }
    return result$data;
  }

  CopyWith$Input$InfoFilter<Input$InfoFilter> get copyWith =>
      CopyWith$Input$InfoFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InfoFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$creators = creators;
    final lOther$creators = other.creators;
    if (_$data.containsKey('creators') !=
        other._$data.containsKey('creators')) {
      return false;
    }
    if (l$creators != lOther$creators) {
      return false;
    }
    final l$creators_neq = creators_neq;
    final lOther$creators_neq = other.creators_neq;
    if (_$data.containsKey('creators_neq') !=
        other._$data.containsKey('creators_neq')) {
      return false;
    }
    if (l$creators_neq != lOther$creators_neq) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (_$data.containsKey('genres') != other._$data.containsKey('genres')) {
      return false;
    }
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$genres_neq = genres_neq;
    final lOther$genres_neq = other.genres_neq;
    if (_$data.containsKey('genres_neq') !=
        other._$data.containsKey('genres_neq')) {
      return false;
    }
    if (l$genres_neq != null && lOther$genres_neq != null) {
      if (l$genres_neq.length != lOther$genres_neq.length) {
        return false;
      }
      for (int i = 0; i < l$genres_neq.length; i++) {
        final l$genres_neq$entry = l$genres_neq[i];
        final lOther$genres_neq$entry = lOther$genres_neq[i];
        if (l$genres_neq$entry != lOther$genres_neq$entry) {
          return false;
        }
      }
    } else if (l$genres_neq != lOther$genres_neq) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$id_neq = id_neq;
    final lOther$id_neq = other.id_neq;
    if (_$data.containsKey('id_neq') != other._$data.containsKey('id_neq')) {
      return false;
    }
    if (l$id_neq != lOther$id_neq) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    final l$synopsis = synopsis;
    final lOther$synopsis = other.synopsis;
    if (_$data.containsKey('synopsis') !=
        other._$data.containsKey('synopsis')) {
      return false;
    }
    if (l$synopsis != lOther$synopsis) {
      return false;
    }
    final l$synopsis_neq = synopsis_neq;
    final lOther$synopsis_neq = other.synopsis_neq;
    if (_$data.containsKey('synopsis_neq') !=
        other._$data.containsKey('synopsis_neq')) {
      return false;
    }
    if (l$synopsis_neq != lOther$synopsis_neq) {
      return false;
    }
    final l$yearsAired = yearsAired;
    final lOther$yearsAired = other.yearsAired;
    if (_$data.containsKey('yearsAired') !=
        other._$data.containsKey('yearsAired')) {
      return false;
    }
    if (l$yearsAired != lOther$yearsAired) {
      return false;
    }
    final l$yearsAired_neq = yearsAired_neq;
    final lOther$yearsAired_neq = other.yearsAired_neq;
    if (_$data.containsKey('yearsAired_neq') !=
        other._$data.containsKey('yearsAired_neq')) {
      return false;
    }
    if (l$yearsAired_neq != lOther$yearsAired_neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$creators = creators;
    final l$creators_neq = creators_neq;
    final l$genres = genres;
    final l$genres_neq = genres_neq;
    final l$id = id;
    final l$id_neq = id_neq;
    final l$ids = ids;
    final l$q = q;
    final l$synopsis = synopsis;
    final l$synopsis_neq = synopsis_neq;
    final l$yearsAired = yearsAired;
    final l$yearsAired_neq = yearsAired_neq;
    return Object.hashAll([
      _$data.containsKey('creators') ? l$creators : const {},
      _$data.containsKey('creators_neq') ? l$creators_neq : const {},
      _$data.containsKey('genres')
          ? l$genres == null
              ? null
              : Object.hashAll(l$genres.map((v) => v))
          : const {},
      _$data.containsKey('genres_neq')
          ? l$genres_neq == null
              ? null
              : Object.hashAll(l$genres_neq.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('id_neq') ? l$id_neq : const {},
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('q') ? l$q : const {},
      _$data.containsKey('synopsis') ? l$synopsis : const {},
      _$data.containsKey('synopsis_neq') ? l$synopsis_neq : const {},
      _$data.containsKey('yearsAired') ? l$yearsAired : const {},
      _$data.containsKey('yearsAired_neq') ? l$yearsAired_neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$InfoFilter<TRes> {
  factory CopyWith$Input$InfoFilter(
    Input$InfoFilter instance,
    TRes Function(Input$InfoFilter) then,
  ) = _CopyWithImpl$Input$InfoFilter;

  factory CopyWith$Input$InfoFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$InfoFilter;

  TRes call({
    String? creators,
    String? creators_neq,
    List<String?>? genres,
    List<String?>? genres_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
    String? synopsis,
    String? synopsis_neq,
    String? yearsAired,
    String? yearsAired_neq,
  });
}

class _CopyWithImpl$Input$InfoFilter<TRes>
    implements CopyWith$Input$InfoFilter<TRes> {
  _CopyWithImpl$Input$InfoFilter(
    this._instance,
    this._then,
  );

  final Input$InfoFilter _instance;

  final TRes Function(Input$InfoFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? creators = _undefined,
    Object? creators_neq = _undefined,
    Object? genres = _undefined,
    Object? genres_neq = _undefined,
    Object? id = _undefined,
    Object? id_neq = _undefined,
    Object? ids = _undefined,
    Object? q = _undefined,
    Object? synopsis = _undefined,
    Object? synopsis_neq = _undefined,
    Object? yearsAired = _undefined,
    Object? yearsAired_neq = _undefined,
  }) =>
      _then(Input$InfoFilter._({
        ..._instance._$data,
        if (creators != _undefined) 'creators': (creators as String?),
        if (creators_neq != _undefined)
          'creators_neq': (creators_neq as String?),
        if (genres != _undefined) 'genres': (genres as List<String?>?),
        if (genres_neq != _undefined)
          'genres_neq': (genres_neq as List<String?>?),
        if (id != _undefined) 'id': (id as String?),
        if (id_neq != _undefined) 'id_neq': (id_neq as String?),
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (q != _undefined) 'q': (q as String?),
        if (synopsis != _undefined) 'synopsis': (synopsis as String?),
        if (synopsis_neq != _undefined)
          'synopsis_neq': (synopsis_neq as String?),
        if (yearsAired != _undefined) 'yearsAired': (yearsAired as String?),
        if (yearsAired_neq != _undefined)
          'yearsAired_neq': (yearsAired_neq as String?),
      }));
}

class _CopyWithStubImpl$Input$InfoFilter<TRes>
    implements CopyWith$Input$InfoFilter<TRes> {
  _CopyWithStubImpl$Input$InfoFilter(this._res);

  TRes _res;

  call({
    String? creators,
    String? creators_neq,
    List<String?>? genres,
    List<String?>? genres_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    String? q,
    String? synopsis,
    String? synopsis_neq,
    String? yearsAired,
    String? yearsAired_neq,
  }) =>
      _res;
}

class Input$InfoInput {
  factory Input$InfoInput({
    required String creators,
    required List<String?> genres,
    required String synopsis,
    required String yearsAired,
  }) =>
      Input$InfoInput._({
        r'creators': creators,
        r'genres': genres,
        r'synopsis': synopsis,
        r'yearsAired': yearsAired,
      });

  Input$InfoInput._(this._$data);

  factory Input$InfoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$creators = data['creators'];
    result$data['creators'] = (l$creators as String);
    final l$genres = data['genres'];
    result$data['genres'] =
        (l$genres as List<dynamic>).map((e) => (e as String?)).toList();
    final l$synopsis = data['synopsis'];
    result$data['synopsis'] = (l$synopsis as String);
    final l$yearsAired = data['yearsAired'];
    result$data['yearsAired'] = (l$yearsAired as String);
    return Input$InfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get creators => (_$data['creators'] as String);
  List<String?> get genres => (_$data['genres'] as List<String?>);
  String get synopsis => (_$data['synopsis'] as String);
  String get yearsAired => (_$data['yearsAired'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$creators = creators;
    result$data['creators'] = l$creators;
    final l$genres = genres;
    result$data['genres'] = l$genres.map((e) => e).toList();
    final l$synopsis = synopsis;
    result$data['synopsis'] = l$synopsis;
    final l$yearsAired = yearsAired;
    result$data['yearsAired'] = l$yearsAired;
    return result$data;
  }

  CopyWith$Input$InfoInput<Input$InfoInput> get copyWith =>
      CopyWith$Input$InfoInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InfoInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$creators = creators;
    final lOther$creators = other.creators;
    if (l$creators != lOther$creators) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres.length != lOther$genres.length) {
      return false;
    }
    for (int i = 0; i < l$genres.length; i++) {
      final l$genres$entry = l$genres[i];
      final lOther$genres$entry = lOther$genres[i];
      if (l$genres$entry != lOther$genres$entry) {
        return false;
      }
    }
    final l$synopsis = synopsis;
    final lOther$synopsis = other.synopsis;
    if (l$synopsis != lOther$synopsis) {
      return false;
    }
    final l$yearsAired = yearsAired;
    final lOther$yearsAired = other.yearsAired;
    if (l$yearsAired != lOther$yearsAired) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$creators = creators;
    final l$genres = genres;
    final l$synopsis = synopsis;
    final l$yearsAired = yearsAired;
    return Object.hashAll([
      l$creators,
      Object.hashAll(l$genres.map((v) => v)),
      l$synopsis,
      l$yearsAired,
    ]);
  }
}

abstract class CopyWith$Input$InfoInput<TRes> {
  factory CopyWith$Input$InfoInput(
    Input$InfoInput instance,
    TRes Function(Input$InfoInput) then,
  ) = _CopyWithImpl$Input$InfoInput;

  factory CopyWith$Input$InfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InfoInput;

  TRes call({
    String? creators,
    List<String?>? genres,
    String? synopsis,
    String? yearsAired,
  });
}

class _CopyWithImpl$Input$InfoInput<TRes>
    implements CopyWith$Input$InfoInput<TRes> {
  _CopyWithImpl$Input$InfoInput(
    this._instance,
    this._then,
  );

  final Input$InfoInput _instance;

  final TRes Function(Input$InfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? creators = _undefined,
    Object? genres = _undefined,
    Object? synopsis = _undefined,
    Object? yearsAired = _undefined,
  }) =>
      _then(Input$InfoInput._({
        ..._instance._$data,
        if (creators != _undefined && creators != null)
          'creators': (creators as String),
        if (genres != _undefined && genres != null)
          'genres': (genres as List<String?>),
        if (synopsis != _undefined && synopsis != null)
          'synopsis': (synopsis as String),
        if (yearsAired != _undefined && yearsAired != null)
          'yearsAired': (yearsAired as String),
      }));
}

class _CopyWithStubImpl$Input$InfoInput<TRes>
    implements CopyWith$Input$InfoInput<TRes> {
  _CopyWithStubImpl$Input$InfoInput(this._res);

  TRes _res;

  call({
    String? creators,
    List<String?>? genres,
    String? synopsis,
    String? yearsAired,
  }) =>
      _res;
}

class Input$MetaDatumFilter {
  factory Input$MetaDatumFilter({
    List<String?>? categories,
    List<String?>? categories_neq,
    String? desc,
    String? desc_neq,
    bool? featured,
    List<String?>? ids,
    String? longDesc,
    String? longDesc_neq,
    String? q,
    String? title,
    String? title_neq,
  }) =>
      Input$MetaDatumFilter._({
        if (categories != null) r'categories': categories,
        if (categories_neq != null) r'categories_neq': categories_neq,
        if (desc != null) r'desc': desc,
        if (desc_neq != null) r'desc_neq': desc_neq,
        if (featured != null) r'featured': featured,
        if (ids != null) r'ids': ids,
        if (longDesc != null) r'longDesc': longDesc,
        if (longDesc_neq != null) r'longDesc_neq': longDesc_neq,
        if (q != null) r'q': q,
        if (title != null) r'title': title,
        if (title_neq != null) r'title_neq': title_neq,
      });

  Input$MetaDatumFilter._(this._$data);

  factory Input$MetaDatumFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categories')) {
      final l$categories = data['categories'];
      result$data['categories'] =
          (l$categories as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('categories_neq')) {
      final l$categories_neq = data['categories_neq'];
      result$data['categories_neq'] = (l$categories_neq as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('desc')) {
      final l$desc = data['desc'];
      result$data['desc'] = (l$desc as String?);
    }
    if (data.containsKey('desc_neq')) {
      final l$desc_neq = data['desc_neq'];
      result$data['desc_neq'] = (l$desc_neq as String?);
    }
    if (data.containsKey('featured')) {
      final l$featured = data['featured'];
      result$data['featured'] = (l$featured as bool?);
    }
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('longDesc')) {
      final l$longDesc = data['longDesc'];
      result$data['longDesc'] = (l$longDesc as String?);
    }
    if (data.containsKey('longDesc_neq')) {
      final l$longDesc_neq = data['longDesc_neq'];
      result$data['longDesc_neq'] = (l$longDesc_neq as String?);
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('title_neq')) {
      final l$title_neq = data['title_neq'];
      result$data['title_neq'] = (l$title_neq as String?);
    }
    return Input$MetaDatumFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get categories => (_$data['categories'] as List<String?>?);
  List<String?>? get categories_neq =>
      (_$data['categories_neq'] as List<String?>?);
  String? get desc => (_$data['desc'] as String?);
  String? get desc_neq => (_$data['desc_neq'] as String?);
  bool? get featured => (_$data['featured'] as bool?);
  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  String? get longDesc => (_$data['longDesc'] as String?);
  String? get longDesc_neq => (_$data['longDesc_neq'] as String?);
  String? get q => (_$data['q'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get title_neq => (_$data['title_neq'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categories')) {
      final l$categories = categories;
      result$data['categories'] = l$categories?.map((e) => e).toList();
    }
    if (_$data.containsKey('categories_neq')) {
      final l$categories_neq = categories_neq;
      result$data['categories_neq'] = l$categories_neq?.map((e) => e).toList();
    }
    if (_$data.containsKey('desc')) {
      final l$desc = desc;
      result$data['desc'] = l$desc;
    }
    if (_$data.containsKey('desc_neq')) {
      final l$desc_neq = desc_neq;
      result$data['desc_neq'] = l$desc_neq;
    }
    if (_$data.containsKey('featured')) {
      final l$featured = featured;
      result$data['featured'] = l$featured;
    }
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('longDesc')) {
      final l$longDesc = longDesc;
      result$data['longDesc'] = l$longDesc;
    }
    if (_$data.containsKey('longDesc_neq')) {
      final l$longDesc_neq = longDesc_neq;
      result$data['longDesc_neq'] = l$longDesc_neq;
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('title_neq')) {
      final l$title_neq = title_neq;
      result$data['title_neq'] = l$title_neq;
    }
    return result$data;
  }

  CopyWith$Input$MetaDatumFilter<Input$MetaDatumFilter> get copyWith =>
      CopyWith$Input$MetaDatumFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MetaDatumFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (_$data.containsKey('categories') !=
        other._$data.containsKey('categories')) {
      return false;
    }
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$categories_neq = categories_neq;
    final lOther$categories_neq = other.categories_neq;
    if (_$data.containsKey('categories_neq') !=
        other._$data.containsKey('categories_neq')) {
      return false;
    }
    if (l$categories_neq != null && lOther$categories_neq != null) {
      if (l$categories_neq.length != lOther$categories_neq.length) {
        return false;
      }
      for (int i = 0; i < l$categories_neq.length; i++) {
        final l$categories_neq$entry = l$categories_neq[i];
        final lOther$categories_neq$entry = lOther$categories_neq[i];
        if (l$categories_neq$entry != lOther$categories_neq$entry) {
          return false;
        }
      }
    } else if (l$categories_neq != lOther$categories_neq) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (_$data.containsKey('desc') != other._$data.containsKey('desc')) {
      return false;
    }
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$desc_neq = desc_neq;
    final lOther$desc_neq = other.desc_neq;
    if (_$data.containsKey('desc_neq') !=
        other._$data.containsKey('desc_neq')) {
      return false;
    }
    if (l$desc_neq != lOther$desc_neq) {
      return false;
    }
    final l$featured = featured;
    final lOther$featured = other.featured;
    if (_$data.containsKey('featured') !=
        other._$data.containsKey('featured')) {
      return false;
    }
    if (l$featured != lOther$featured) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$longDesc = longDesc;
    final lOther$longDesc = other.longDesc;
    if (_$data.containsKey('longDesc') !=
        other._$data.containsKey('longDesc')) {
      return false;
    }
    if (l$longDesc != lOther$longDesc) {
      return false;
    }
    final l$longDesc_neq = longDesc_neq;
    final lOther$longDesc_neq = other.longDesc_neq;
    if (_$data.containsKey('longDesc_neq') !=
        other._$data.containsKey('longDesc_neq')) {
      return false;
    }
    if (l$longDesc_neq != lOther$longDesc_neq) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$title_neq = title_neq;
    final lOther$title_neq = other.title_neq;
    if (_$data.containsKey('title_neq') !=
        other._$data.containsKey('title_neq')) {
      return false;
    }
    if (l$title_neq != lOther$title_neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$categories_neq = categories_neq;
    final l$desc = desc;
    final l$desc_neq = desc_neq;
    final l$featured = featured;
    final l$ids = ids;
    final l$longDesc = longDesc;
    final l$longDesc_neq = longDesc_neq;
    final l$q = q;
    final l$title = title;
    final l$title_neq = title_neq;
    return Object.hashAll([
      _$data.containsKey('categories')
          ? l$categories == null
              ? null
              : Object.hashAll(l$categories.map((v) => v))
          : const {},
      _$data.containsKey('categories_neq')
          ? l$categories_neq == null
              ? null
              : Object.hashAll(l$categories_neq.map((v) => v))
          : const {},
      _$data.containsKey('desc') ? l$desc : const {},
      _$data.containsKey('desc_neq') ? l$desc_neq : const {},
      _$data.containsKey('featured') ? l$featured : const {},
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('longDesc') ? l$longDesc : const {},
      _$data.containsKey('longDesc_neq') ? l$longDesc_neq : const {},
      _$data.containsKey('q') ? l$q : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('title_neq') ? l$title_neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$MetaDatumFilter<TRes> {
  factory CopyWith$Input$MetaDatumFilter(
    Input$MetaDatumFilter instance,
    TRes Function(Input$MetaDatumFilter) then,
  ) = _CopyWithImpl$Input$MetaDatumFilter;

  factory CopyWith$Input$MetaDatumFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$MetaDatumFilter;

  TRes call({
    List<String?>? categories,
    List<String?>? categories_neq,
    String? desc,
    String? desc_neq,
    bool? featured,
    List<String?>? ids,
    String? longDesc,
    String? longDesc_neq,
    String? q,
    String? title,
    String? title_neq,
  });
}

class _CopyWithImpl$Input$MetaDatumFilter<TRes>
    implements CopyWith$Input$MetaDatumFilter<TRes> {
  _CopyWithImpl$Input$MetaDatumFilter(
    this._instance,
    this._then,
  );

  final Input$MetaDatumFilter _instance;

  final TRes Function(Input$MetaDatumFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categories = _undefined,
    Object? categories_neq = _undefined,
    Object? desc = _undefined,
    Object? desc_neq = _undefined,
    Object? featured = _undefined,
    Object? ids = _undefined,
    Object? longDesc = _undefined,
    Object? longDesc_neq = _undefined,
    Object? q = _undefined,
    Object? title = _undefined,
    Object? title_neq = _undefined,
  }) =>
      _then(Input$MetaDatumFilter._({
        ..._instance._$data,
        if (categories != _undefined)
          'categories': (categories as List<String?>?),
        if (categories_neq != _undefined)
          'categories_neq': (categories_neq as List<String?>?),
        if (desc != _undefined) 'desc': (desc as String?),
        if (desc_neq != _undefined) 'desc_neq': (desc_neq as String?),
        if (featured != _undefined) 'featured': (featured as bool?),
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (longDesc != _undefined) 'longDesc': (longDesc as String?),
        if (longDesc_neq != _undefined)
          'longDesc_neq': (longDesc_neq as String?),
        if (q != _undefined) 'q': (q as String?),
        if (title != _undefined) 'title': (title as String?),
        if (title_neq != _undefined) 'title_neq': (title_neq as String?),
      }));
}

class _CopyWithStubImpl$Input$MetaDatumFilter<TRes>
    implements CopyWith$Input$MetaDatumFilter<TRes> {
  _CopyWithStubImpl$Input$MetaDatumFilter(this._res);

  TRes _res;

  call({
    List<String?>? categories,
    List<String?>? categories_neq,
    String? desc,
    String? desc_neq,
    bool? featured,
    List<String?>? ids,
    String? longDesc,
    String? longDesc_neq,
    String? q,
    String? title,
    String? title_neq,
  }) =>
      _res;
}

class Input$MetaDatumInput {
  factory Input$MetaDatumInput({
    required List<String?> categories,
    required String desc,
    required bool featured,
    required String longDesc,
    required String title,
  }) =>
      Input$MetaDatumInput._({
        r'categories': categories,
        r'desc': desc,
        r'featured': featured,
        r'longDesc': longDesc,
        r'title': title,
      });

  Input$MetaDatumInput._(this._$data);

  factory Input$MetaDatumInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$categories = data['categories'];
    result$data['categories'] =
        (l$categories as List<dynamic>).map((e) => (e as String?)).toList();
    final l$desc = data['desc'];
    result$data['desc'] = (l$desc as String);
    final l$featured = data['featured'];
    result$data['featured'] = (l$featured as bool);
    final l$longDesc = data['longDesc'];
    result$data['longDesc'] = (l$longDesc as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$MetaDatumInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?> get categories => (_$data['categories'] as List<String?>);
  String get desc => (_$data['desc'] as String);
  bool get featured => (_$data['featured'] as bool);
  String get longDesc => (_$data['longDesc'] as String);
  String get title => (_$data['title'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$categories = categories;
    result$data['categories'] = l$categories.map((e) => e).toList();
    final l$desc = desc;
    result$data['desc'] = l$desc;
    final l$featured = featured;
    result$data['featured'] = l$featured;
    final l$longDesc = longDesc;
    result$data['longDesc'] = l$longDesc;
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$MetaDatumInput<Input$MetaDatumInput> get copyWith =>
      CopyWith$Input$MetaDatumInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MetaDatumInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories.length != lOther$categories.length) {
      return false;
    }
    for (int i = 0; i < l$categories.length; i++) {
      final l$categories$entry = l$categories[i];
      final lOther$categories$entry = lOther$categories[i];
      if (l$categories$entry != lOther$categories$entry) {
        return false;
      }
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$featured = featured;
    final lOther$featured = other.featured;
    if (l$featured != lOther$featured) {
      return false;
    }
    final l$longDesc = longDesc;
    final lOther$longDesc = other.longDesc;
    if (l$longDesc != lOther$longDesc) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$desc = desc;
    final l$featured = featured;
    final l$longDesc = longDesc;
    final l$title = title;
    return Object.hashAll([
      Object.hashAll(l$categories.map((v) => v)),
      l$desc,
      l$featured,
      l$longDesc,
      l$title,
    ]);
  }
}

abstract class CopyWith$Input$MetaDatumInput<TRes> {
  factory CopyWith$Input$MetaDatumInput(
    Input$MetaDatumInput instance,
    TRes Function(Input$MetaDatumInput) then,
  ) = _CopyWithImpl$Input$MetaDatumInput;

  factory CopyWith$Input$MetaDatumInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MetaDatumInput;

  TRes call({
    List<String?>? categories,
    String? desc,
    bool? featured,
    String? longDesc,
    String? title,
  });
}

class _CopyWithImpl$Input$MetaDatumInput<TRes>
    implements CopyWith$Input$MetaDatumInput<TRes> {
  _CopyWithImpl$Input$MetaDatumInput(
    this._instance,
    this._then,
  );

  final Input$MetaDatumInput _instance;

  final TRes Function(Input$MetaDatumInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categories = _undefined,
    Object? desc = _undefined,
    Object? featured = _undefined,
    Object? longDesc = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$MetaDatumInput._({
        ..._instance._$data,
        if (categories != _undefined && categories != null)
          'categories': (categories as List<String?>),
        if (desc != _undefined && desc != null) 'desc': (desc as String),
        if (featured != _undefined && featured != null)
          'featured': (featured as bool),
        if (longDesc != _undefined && longDesc != null)
          'longDesc': (longDesc as String),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
}

class _CopyWithStubImpl$Input$MetaDatumInput<TRes>
    implements CopyWith$Input$MetaDatumInput<TRes> {
  _CopyWithStubImpl$Input$MetaDatumInput(this._res);

  TRes _res;

  call({
    List<String?>? categories,
    String? desc,
    bool? featured,
    String? longDesc,
    String? title,
  }) =>
      _res;
}

class Input$QuestionFilter {
  factory Input$QuestionFilter({
    String? correctAnswer,
    String? correctAnswer_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    List<String?>? possibleAnsers,
    List<String?>? possibleAnsers_neq,
    String? q,
    String? question,
    String? question_neq,
  }) =>
      Input$QuestionFilter._({
        if (correctAnswer != null) r'correctAnswer': correctAnswer,
        if (correctAnswer_neq != null) r'correctAnswer_neq': correctAnswer_neq,
        if (id != null) r'id': id,
        if (id_neq != null) r'id_neq': id_neq,
        if (ids != null) r'ids': ids,
        if (possibleAnsers != null) r'possibleAnsers': possibleAnsers,
        if (possibleAnsers_neq != null)
          r'possibleAnsers_neq': possibleAnsers_neq,
        if (q != null) r'q': q,
        if (question != null) r'question': question,
        if (question_neq != null) r'question_neq': question_neq,
      });

  Input$QuestionFilter._(this._$data);

  factory Input$QuestionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('correctAnswer')) {
      final l$correctAnswer = data['correctAnswer'];
      result$data['correctAnswer'] = (l$correctAnswer as String?);
    }
    if (data.containsKey('correctAnswer_neq')) {
      final l$correctAnswer_neq = data['correctAnswer_neq'];
      result$data['correctAnswer_neq'] = (l$correctAnswer_neq as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('id_neq')) {
      final l$id_neq = data['id_neq'];
      result$data['id_neq'] = (l$id_neq as String?);
    }
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('possibleAnsers')) {
      final l$possibleAnsers = data['possibleAnsers'];
      result$data['possibleAnsers'] = (l$possibleAnsers as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('possibleAnsers_neq')) {
      final l$possibleAnsers_neq = data['possibleAnsers_neq'];
      result$data['possibleAnsers_neq'] =
          (l$possibleAnsers_neq as List<dynamic>?)
              ?.map((e) => (e as String?))
              .toList();
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    if (data.containsKey('question')) {
      final l$question = data['question'];
      result$data['question'] = (l$question as String?);
    }
    if (data.containsKey('question_neq')) {
      final l$question_neq = data['question_neq'];
      result$data['question_neq'] = (l$question_neq as String?);
    }
    return Input$QuestionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get correctAnswer => (_$data['correctAnswer'] as String?);
  String? get correctAnswer_neq => (_$data['correctAnswer_neq'] as String?);
  String? get id => (_$data['id'] as String?);
  String? get id_neq => (_$data['id_neq'] as String?);
  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  List<String?>? get possibleAnsers =>
      (_$data['possibleAnsers'] as List<String?>?);
  List<String?>? get possibleAnsers_neq =>
      (_$data['possibleAnsers_neq'] as List<String?>?);
  String? get q => (_$data['q'] as String?);
  String? get question => (_$data['question'] as String?);
  String? get question_neq => (_$data['question_neq'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('correctAnswer')) {
      final l$correctAnswer = correctAnswer;
      result$data['correctAnswer'] = l$correctAnswer;
    }
    if (_$data.containsKey('correctAnswer_neq')) {
      final l$correctAnswer_neq = correctAnswer_neq;
      result$data['correctAnswer_neq'] = l$correctAnswer_neq;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('id_neq')) {
      final l$id_neq = id_neq;
      result$data['id_neq'] = l$id_neq;
    }
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('possibleAnsers')) {
      final l$possibleAnsers = possibleAnsers;
      result$data['possibleAnsers'] = l$possibleAnsers?.map((e) => e).toList();
    }
    if (_$data.containsKey('possibleAnsers_neq')) {
      final l$possibleAnsers_neq = possibleAnsers_neq;
      result$data['possibleAnsers_neq'] =
          l$possibleAnsers_neq?.map((e) => e).toList();
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    if (_$data.containsKey('question')) {
      final l$question = question;
      result$data['question'] = l$question;
    }
    if (_$data.containsKey('question_neq')) {
      final l$question_neq = question_neq;
      result$data['question_neq'] = l$question_neq;
    }
    return result$data;
  }

  CopyWith$Input$QuestionFilter<Input$QuestionFilter> get copyWith =>
      CopyWith$Input$QuestionFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$QuestionFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$correctAnswer = correctAnswer;
    final lOther$correctAnswer = other.correctAnswer;
    if (_$data.containsKey('correctAnswer') !=
        other._$data.containsKey('correctAnswer')) {
      return false;
    }
    if (l$correctAnswer != lOther$correctAnswer) {
      return false;
    }
    final l$correctAnswer_neq = correctAnswer_neq;
    final lOther$correctAnswer_neq = other.correctAnswer_neq;
    if (_$data.containsKey('correctAnswer_neq') !=
        other._$data.containsKey('correctAnswer_neq')) {
      return false;
    }
    if (l$correctAnswer_neq != lOther$correctAnswer_neq) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$id_neq = id_neq;
    final lOther$id_neq = other.id_neq;
    if (_$data.containsKey('id_neq') != other._$data.containsKey('id_neq')) {
      return false;
    }
    if (l$id_neq != lOther$id_neq) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$possibleAnsers = possibleAnsers;
    final lOther$possibleAnsers = other.possibleAnsers;
    if (_$data.containsKey('possibleAnsers') !=
        other._$data.containsKey('possibleAnsers')) {
      return false;
    }
    if (l$possibleAnsers != null && lOther$possibleAnsers != null) {
      if (l$possibleAnsers.length != lOther$possibleAnsers.length) {
        return false;
      }
      for (int i = 0; i < l$possibleAnsers.length; i++) {
        final l$possibleAnsers$entry = l$possibleAnsers[i];
        final lOther$possibleAnsers$entry = lOther$possibleAnsers[i];
        if (l$possibleAnsers$entry != lOther$possibleAnsers$entry) {
          return false;
        }
      }
    } else if (l$possibleAnsers != lOther$possibleAnsers) {
      return false;
    }
    final l$possibleAnsers_neq = possibleAnsers_neq;
    final lOther$possibleAnsers_neq = other.possibleAnsers_neq;
    if (_$data.containsKey('possibleAnsers_neq') !=
        other._$data.containsKey('possibleAnsers_neq')) {
      return false;
    }
    if (l$possibleAnsers_neq != null && lOther$possibleAnsers_neq != null) {
      if (l$possibleAnsers_neq.length != lOther$possibleAnsers_neq.length) {
        return false;
      }
      for (int i = 0; i < l$possibleAnsers_neq.length; i++) {
        final l$possibleAnsers_neq$entry = l$possibleAnsers_neq[i];
        final lOther$possibleAnsers_neq$entry = lOther$possibleAnsers_neq[i];
        if (l$possibleAnsers_neq$entry != lOther$possibleAnsers_neq$entry) {
          return false;
        }
      }
    } else if (l$possibleAnsers_neq != lOther$possibleAnsers_neq) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    final l$question = question;
    final lOther$question = other.question;
    if (_$data.containsKey('question') !=
        other._$data.containsKey('question')) {
      return false;
    }
    if (l$question != lOther$question) {
      return false;
    }
    final l$question_neq = question_neq;
    final lOther$question_neq = other.question_neq;
    if (_$data.containsKey('question_neq') !=
        other._$data.containsKey('question_neq')) {
      return false;
    }
    if (l$question_neq != lOther$question_neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$correctAnswer = correctAnswer;
    final l$correctAnswer_neq = correctAnswer_neq;
    final l$id = id;
    final l$id_neq = id_neq;
    final l$ids = ids;
    final l$possibleAnsers = possibleAnsers;
    final l$possibleAnsers_neq = possibleAnsers_neq;
    final l$q = q;
    final l$question = question;
    final l$question_neq = question_neq;
    return Object.hashAll([
      _$data.containsKey('correctAnswer') ? l$correctAnswer : const {},
      _$data.containsKey('correctAnswer_neq') ? l$correctAnswer_neq : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('id_neq') ? l$id_neq : const {},
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('possibleAnsers')
          ? l$possibleAnsers == null
              ? null
              : Object.hashAll(l$possibleAnsers.map((v) => v))
          : const {},
      _$data.containsKey('possibleAnsers_neq')
          ? l$possibleAnsers_neq == null
              ? null
              : Object.hashAll(l$possibleAnsers_neq.map((v) => v))
          : const {},
      _$data.containsKey('q') ? l$q : const {},
      _$data.containsKey('question') ? l$question : const {},
      _$data.containsKey('question_neq') ? l$question_neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuestionFilter<TRes> {
  factory CopyWith$Input$QuestionFilter(
    Input$QuestionFilter instance,
    TRes Function(Input$QuestionFilter) then,
  ) = _CopyWithImpl$Input$QuestionFilter;

  factory CopyWith$Input$QuestionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$QuestionFilter;

  TRes call({
    String? correctAnswer,
    String? correctAnswer_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    List<String?>? possibleAnsers,
    List<String?>? possibleAnsers_neq,
    String? q,
    String? question,
    String? question_neq,
  });
}

class _CopyWithImpl$Input$QuestionFilter<TRes>
    implements CopyWith$Input$QuestionFilter<TRes> {
  _CopyWithImpl$Input$QuestionFilter(
    this._instance,
    this._then,
  );

  final Input$QuestionFilter _instance;

  final TRes Function(Input$QuestionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? correctAnswer = _undefined,
    Object? correctAnswer_neq = _undefined,
    Object? id = _undefined,
    Object? id_neq = _undefined,
    Object? ids = _undefined,
    Object? possibleAnsers = _undefined,
    Object? possibleAnsers_neq = _undefined,
    Object? q = _undefined,
    Object? question = _undefined,
    Object? question_neq = _undefined,
  }) =>
      _then(Input$QuestionFilter._({
        ..._instance._$data,
        if (correctAnswer != _undefined)
          'correctAnswer': (correctAnswer as String?),
        if (correctAnswer_neq != _undefined)
          'correctAnswer_neq': (correctAnswer_neq as String?),
        if (id != _undefined) 'id': (id as String?),
        if (id_neq != _undefined) 'id_neq': (id_neq as String?),
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (possibleAnsers != _undefined)
          'possibleAnsers': (possibleAnsers as List<String?>?),
        if (possibleAnsers_neq != _undefined)
          'possibleAnsers_neq': (possibleAnsers_neq as List<String?>?),
        if (q != _undefined) 'q': (q as String?),
        if (question != _undefined) 'question': (question as String?),
        if (question_neq != _undefined)
          'question_neq': (question_neq as String?),
      }));
}

class _CopyWithStubImpl$Input$QuestionFilter<TRes>
    implements CopyWith$Input$QuestionFilter<TRes> {
  _CopyWithStubImpl$Input$QuestionFilter(this._res);

  TRes _res;

  call({
    String? correctAnswer,
    String? correctAnswer_neq,
    String? id,
    String? id_neq,
    List<String?>? ids,
    List<String?>? possibleAnsers,
    List<String?>? possibleAnsers_neq,
    String? q,
    String? question,
    String? question_neq,
  }) =>
      _res;
}

class Input$QuestionInput {
  factory Input$QuestionInput({
    required String correctAnswer,
    required List<String?> possibleAnsers,
    required String question,
  }) =>
      Input$QuestionInput._({
        r'correctAnswer': correctAnswer,
        r'possibleAnsers': possibleAnsers,
        r'question': question,
      });

  Input$QuestionInput._(this._$data);

  factory Input$QuestionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$correctAnswer = data['correctAnswer'];
    result$data['correctAnswer'] = (l$correctAnswer as String);
    final l$possibleAnsers = data['possibleAnsers'];
    result$data['possibleAnsers'] =
        (l$possibleAnsers as List<dynamic>).map((e) => (e as String?)).toList();
    final l$question = data['question'];
    result$data['question'] = (l$question as String);
    return Input$QuestionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get correctAnswer => (_$data['correctAnswer'] as String);
  List<String?> get possibleAnsers =>
      (_$data['possibleAnsers'] as List<String?>);
  String get question => (_$data['question'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$correctAnswer = correctAnswer;
    result$data['correctAnswer'] = l$correctAnswer;
    final l$possibleAnsers = possibleAnsers;
    result$data['possibleAnsers'] = l$possibleAnsers.map((e) => e).toList();
    final l$question = question;
    result$data['question'] = l$question;
    return result$data;
  }

  CopyWith$Input$QuestionInput<Input$QuestionInput> get copyWith =>
      CopyWith$Input$QuestionInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$QuestionInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$correctAnswer = correctAnswer;
    final lOther$correctAnswer = other.correctAnswer;
    if (l$correctAnswer != lOther$correctAnswer) {
      return false;
    }
    final l$possibleAnsers = possibleAnsers;
    final lOther$possibleAnsers = other.possibleAnsers;
    if (l$possibleAnsers.length != lOther$possibleAnsers.length) {
      return false;
    }
    for (int i = 0; i < l$possibleAnsers.length; i++) {
      final l$possibleAnsers$entry = l$possibleAnsers[i];
      final lOther$possibleAnsers$entry = lOther$possibleAnsers[i];
      if (l$possibleAnsers$entry != lOther$possibleAnsers$entry) {
        return false;
      }
    }
    final l$question = question;
    final lOther$question = other.question;
    if (l$question != lOther$question) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$correctAnswer = correctAnswer;
    final l$possibleAnsers = possibleAnsers;
    final l$question = question;
    return Object.hashAll([
      l$correctAnswer,
      Object.hashAll(l$possibleAnsers.map((v) => v)),
      l$question,
    ]);
  }
}

abstract class CopyWith$Input$QuestionInput<TRes> {
  factory CopyWith$Input$QuestionInput(
    Input$QuestionInput instance,
    TRes Function(Input$QuestionInput) then,
  ) = _CopyWithImpl$Input$QuestionInput;

  factory CopyWith$Input$QuestionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuestionInput;

  TRes call({
    String? correctAnswer,
    List<String?>? possibleAnsers,
    String? question,
  });
}

class _CopyWithImpl$Input$QuestionInput<TRes>
    implements CopyWith$Input$QuestionInput<TRes> {
  _CopyWithImpl$Input$QuestionInput(
    this._instance,
    this._then,
  );

  final Input$QuestionInput _instance;

  final TRes Function(Input$QuestionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? correctAnswer = _undefined,
    Object? possibleAnsers = _undefined,
    Object? question = _undefined,
  }) =>
      _then(Input$QuestionInput._({
        ..._instance._$data,
        if (correctAnswer != _undefined && correctAnswer != null)
          'correctAnswer': (correctAnswer as String),
        if (possibleAnsers != _undefined && possibleAnsers != null)
          'possibleAnsers': (possibleAnsers as List<String?>),
        if (question != _undefined && question != null)
          'question': (question as String),
      }));
}

class _CopyWithStubImpl$Input$QuestionInput<TRes>
    implements CopyWith$Input$QuestionInput<TRes> {
  _CopyWithStubImpl$Input$QuestionInput(this._res);

  TRes _res;

  call({
    String? correctAnswer,
    List<String?>? possibleAnsers,
    String? question,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
