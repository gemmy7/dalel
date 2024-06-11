class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoadingState extends SignupState {}

final class SignupSuccessState extends SignupState {}

final class SignupFailureState extends SignupState {
  final String errMessage;

  SignupFailureState({required this.errMessage});
}
