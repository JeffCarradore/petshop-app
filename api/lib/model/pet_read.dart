//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PetRead {
  /// Returns a new [PetRead] instance.
  PetRead({
    required this.name,
    required this.dateOfBirth,
    required this.breed,
    required this.color,
    this.weight,
    required this.id,
    required this.owner,
  });

  String name;

  DateTime dateOfBirth;

  String breed;

  String color;

  num? weight;

  int id;

  UserRead owner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PetRead &&
    other.name == name &&
    other.dateOfBirth == dateOfBirth &&
    other.breed == breed &&
    other.color == color &&
    other.weight == weight &&
    other.id == id &&
    other.owner == owner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (dateOfBirth.hashCode) +
    (breed.hashCode) +
    (color.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (id.hashCode) +
    (owner.hashCode);

  @override
  String toString() => 'PetRead[name=$name, dateOfBirth=$dateOfBirth, breed=$breed, color=$color, weight=$weight, id=$id, owner=$owner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'date_of_birth'] = _dateFormatter.format(this.dateOfBirth.toUtc());
      json[r'breed'] = this.breed;
      json[r'color'] = this.color;
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
      json[r'id'] = this.id;
      json[r'owner'] = this.owner;
    return json;
  }

  /// Returns a new [PetRead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PetRead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PetRead[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PetRead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PetRead(
        name: mapValueOfType<String>(json, r'name')!,
        dateOfBirth: mapDateTime(json, r'date_of_birth', r'')!,
        breed: mapValueOfType<String>(json, r'breed')!,
        color: mapValueOfType<String>(json, r'color')!,
        weight: json[r'weight'] == null
            ? null
            : num.parse('${json[r'weight']}'),
        id: mapValueOfType<int>(json, r'id')!,
        owner: UserRead.fromJson(json[r'owner'])!,
      );
    }
    return null;
  }

  static List<PetRead> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PetRead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PetRead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PetRead> mapFromJson(dynamic json) {
    final map = <String, PetRead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PetRead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PetRead-objects as value to a dart map
  static Map<String, List<PetRead>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PetRead>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PetRead.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'date_of_birth',
    'breed',
    'color',
    'id',
    'owner',
  };
}

