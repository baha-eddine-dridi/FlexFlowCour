import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FavouriteCourRecord extends FirestoreRecord {
  FavouriteCourRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "duree" field.
  String? _duree;
  String get duree => _duree ?? '';
  bool hasDuree() => _duree != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "Intensite" field.
  String? _intensite;
  String get intensite => _intensite ?? '';
  bool hasIntensite() => _intensite != null;

  // "objectif" field.
  String? _objectif;
  String get objectif => _objectif ?? '';
  bool hasObjectif() => _objectif != null;

  // "cible" field.
  String? _cible;
  String get cible => _cible ?? '';
  bool hasCible() => _cible != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "capacite" field.
  String? _capacite;
  String get capacite => _capacite ?? '';
  bool hasCapacite() => _capacite != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _duree = snapshotData['duree'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _intensite = snapshotData['Intensite'] as String?;
    _objectif = snapshotData['objectif'] as String?;
    _cible = snapshotData['cible'] as String?;
    _image = snapshotData['image'] as String?;
    _capacite = snapshotData['capacite'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favouriteCour');

  static Stream<FavouriteCourRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavouriteCourRecord.fromSnapshot(s));

  static Future<FavouriteCourRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavouriteCourRecord.fromSnapshot(s));

  static FavouriteCourRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavouriteCourRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavouriteCourRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavouriteCourRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavouriteCourRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavouriteCourRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavouriteCourRecordData({
  String? nom,
  String? duree,
  String? categorie,
  String? intensite,
  String? objectif,
  String? cible,
  String? image,
  String? capacite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'duree': duree,
      'categorie': categorie,
      'Intensite': intensite,
      'objectif': objectif,
      'cible': cible,
      'image': image,
      'capacite': capacite,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavouriteCourRecordDocumentEquality
    implements Equality<FavouriteCourRecord> {
  const FavouriteCourRecordDocumentEquality();

  @override
  bool equals(FavouriteCourRecord? e1, FavouriteCourRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.duree == e2?.duree &&
        e1?.categorie == e2?.categorie &&
        e1?.intensite == e2?.intensite &&
        e1?.objectif == e2?.objectif &&
        e1?.cible == e2?.cible &&
        e1?.image == e2?.image &&
        e1?.capacite == e2?.capacite;
  }

  @override
  int hash(FavouriteCourRecord? e) => const ListEquality().hash([
        e?.nom,
        e?.duree,
        e?.categorie,
        e?.intensite,
        e?.objectif,
        e?.cible,
        e?.image,
        e?.capacite
      ]);

  @override
  bool isValidKey(Object? o) => o is FavouriteCourRecord;
}
