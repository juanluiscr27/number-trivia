import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/src/data/models/number_trivia_model.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  group('fromJson', () {
    test(
      'Should return a valid model when the JSON number is an integer',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia_int.json'));
        // act
        final result = NumberTriviaModel.fromJson(jsonMap);
        // assert
        expect(result, tNumberTriviaModel);
      },
    );
  });

  group('toJson', () {
    test(
      'Should return a JSON map containing the proper data',
      () async {
        // act
        final result = tNumberTriviaModel.toJson();
        // assert
        final expectedJsonMap = {
          "text": "Test Text",
          "number": 1,
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
