import 'package:equatable/equatable.dart';
import 'failures.dart';

class ErrorObject extends Equatable {
  const ErrorObject({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  List<Object?> get props => [title, message];

  static ErrorObject mapFailureToErrorMessage({required Failure failure}) {
    return failure.when(
      versionCheckFailure: () => const ErrorObject(
        title: '버전 체크 에러',
        message: '앱 버전을 확인할 수 없어요',
      ),
      serverFailure: () => const ErrorObject(
        title: '인터넷 서버 에러',
        message: '정보를 불러올 수 없어요',
      ),
      dataParsingFailure: () => const ErrorObject(
        title: '데이터 파싱 에러',
        message: '해당 정보를 불러올 수 없어요',
      ),
      noConnectionFailure: () => const ErrorObject(
        title: '인터넷 연결 실패',
        message: '인터넷과 연결되어있지 않네요',
      ),
      wrongTokenFailure: () => const ErrorObject(
        title: '토큰 오류',
        message: '사용자를 인증할 수 없어요',
      ),
      noUserDataFailure: () => const ErrorObject(
        title: '사용자 정보 불러오기 실패',
        message: '정보를 불러오지 못했어요',
      ),
      notFoundFailure: () => const ErrorObject(
          title: '404 not found 에러', message: '사용자 정보를 불러올 수 없어요'),
      wrongTextFailure: () => const ErrorObject(
          title: '검색 결과가 없습니다', message: '한글/영어/숫자를 포함하여 입력해주세요'),
    );
  }
}
