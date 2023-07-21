import 'package:architecture_challenge/bloc/post_cubit.dart';
import 'package:architecture_challenge/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'bloc_test/post_cubit_test.dart';

void main() {
  testWidgets('Post screen shows 2 elements', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<PostCubit>(
        create: (context) => PostCubit(MockRepoImp()),
        child: const MaterialApp(
          home: PostPage(title: 'FlutterTaipei :) Test'),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byKey(const Key('1')), findsOneWidget);
    expect(find.byKey(const Key('2')), findsOneWidget);
  });
}
