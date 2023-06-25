// Mocks generated by Mockito 5.4.2 from annotations
// in country_list/test/src/features/domain/usecases/get_country_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:country_list/src/common/entities/app_error.dart' as _i5;
import 'package:country_list/src/features/country_list/domain/entities/country_entity.dart'
    as _i6;
import 'package:country_list/src/features/country_list/domain/repositories/country_repositories.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CountryRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCountryRepository extends _i1.Mock implements _i3.CountryRepository {
  MockCountryRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.AppError, List<_i6.CountryEntity>>> getCountry() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCountry,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.AppError, List<_i6.CountryEntity>>>.value(
                _FakeEither_0<_i5.AppError, List<_i6.CountryEntity>>(
          this,
          Invocation.method(
            #getCountry,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.AppError, List<_i6.CountryEntity>>>);
  @override
  _i4.Future<_i2.Either<_i5.AppError, void>> saveCountry(
          _i6.CountryEntity? countryEntity) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveCountry,
          [countryEntity],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.AppError, void>>.value(
            _FakeEither_0<_i5.AppError, void>(
          this,
          Invocation.method(
            #saveCountry,
            [countryEntity],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.AppError, void>>);
  @override
  _i4.Future<
      _i2
          .Either<_i5.AppError, List<_i6.CountryEntity>>> getSaveCountries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getSaveCountries,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.AppError, List<_i6.CountryEntity>>>.value(
                _FakeEither_0<_i5.AppError, List<_i6.CountryEntity>>(
          this,
          Invocation.method(
            #getSaveCountries,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.AppError, List<_i6.CountryEntity>>>);
}