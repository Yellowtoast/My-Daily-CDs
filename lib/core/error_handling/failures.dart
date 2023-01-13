import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._(); // This constructor is needed to have custom methods in Freezed.
  const factory Failure.versionCheckFailure() = VersionCheckFailure;
  const factory Failure.serverFailure() = ServerFailure;
  const factory Failure.dataParsingFailure() = DataParsingFailure;
  const factory Failure.noConnectionFailure() = NoConnectionFailure;
  const factory Failure.notFoundFailure() = NotFoundFailure;
  const factory Failure.noUserDataFailure() = NoUserDataFailure;
  const factory Failure.wrongTokenFailure() = WrongTokenFailure;
  const factory Failure.wrongTextFailure() = WrongTextFailure;
}
