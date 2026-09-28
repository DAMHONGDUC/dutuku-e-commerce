import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/profile/domain/domain.dart';
import 'package:tuku_shop/src/features/profile/presentation/profile/profile_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/mock_usecases.dart';

void main() {
  late MockGetProfileSettingsUsecase usecase;
  late ProfileController controller;

  final tSections = [
    SettingSectionEntity(
      name: 'Account',
      sectionType: SettingSectionType.general,
      items: const [],
    ),
  ];

  setUp(() {
    usecase = MockGetProfileSettingsUsecase();
    controller = ProfileController(usecase);
  });

  tearDown(() => controller.close());

  blocTest<ProfileController, ProfileState>(
    'emits [Loading, Loaded] when the usecase succeeds',
    setUp: () {
      when(
        () => usecase.call(NoParams()),
      ).thenAnswer((_) async => Right(tSections));
    },
    build: () => controller,
    act: (c) => c.getData(),
    expect: () => [
      ProfileLoadingState(),
      ProfileLoadedState(listSettingSection: tSections),
    ],
  );

  blocTest<ProfileController, ProfileState>(
    'emits [Loading, Error] when the usecase fails',
    setUp: () {
      when(
        () => usecase.call(NoParams()),
      ).thenAnswer((_) async => Left(ServerFailure()));
    },
    build: () => controller,
    act: (c) => c.getData(),
    expect: () => [
      ProfileLoadingState(),
      ProfileErrorState(errorMsg: 'something wrong'),
    ],
  );
}
