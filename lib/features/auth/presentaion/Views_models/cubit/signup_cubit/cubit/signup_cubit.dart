import 'package:dalel/features/auth/presentaion/Views_models/cubit/signup_cubit/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
}
