import 'package:flutter/foundation.dart';
import 'error_message_object.dart';
import 'failures.dart';

class FailureInterpreter {
  FailureInterpreter._internal();
  static final _singleton = FailureInterpreter._internal();
  factory FailureInterpreter() => _singleton;

  // mapFailureToDialog(Failure _failure, String occurMethod) {
  //   ErrorObject errorMessage =
  //       ErrorObject.mapFailureToErrorMessage(failure: _failure);

  //   if (kDebugMode) {
  //     print(
  //       '\nā¤ļøāš„ FAIL[$_failure] => METHOD FROM: $occurMethod\nš title: ${errorMessage.title}\nš message: ${errorMessage.message}',
  //     );
  //   }

  //   return showCustomSnackbar(text: errorMessage.message);
  // }

  // String mapFailureToText(Failure _failure) {
  //   ErrorObject errorMessage =
  //       ErrorObject.mapFailureToErrorMessage(failure: _failure);

  //   return errorMessage.message;
  // }

  // mapFailureToSnackbar(Failure _failure, String occurMethod) {
  //   ErrorObject errorMessage =
  //       ErrorObject.mapFailureToErrorMessage(failure: _failure);

  //   if (kDebugMode) {
  //     print(
  //       '\nā¤ļøāš„ FAIL[$_failure] => METHOD FROM: $occurMethod\nš title: ${errorMessage.title}\nš message: ${errorMessage.message}',
  //     );
  //   }

  //   return showCustomSnackbar(text: errorMessage.message);
  // }

  // mapFailureToPage(Failure _failure, String occurMethod) {
  //   ErrorObject errorMessage =
  //       ErrorObject.mapFailureToErrorMessage(failure: _failure);
  //   if (kDebugMode) {
  //     print(
  //       '\nā¤ļøāš„ FAIL[$_failure] => METHOD FROM: $occurMethod\nš title: ${errorMessage.title}\nš message: ${errorMessage.message}',
  //     );
  //   }
  //   return showCustomSnackbar(text: errorMessage.message);
  // }
}
