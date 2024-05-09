import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartfelt_hands/features/auth/presentation/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? fullName;
  String? email;
  String? password;
  String? confirmPassword;
  String? phoneNumber;
  bool? termsAndConditionCheckBox = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signupFormKey = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      // await addUserProfile();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState("The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState("The account already exists for that email."));
      }
    } catch (e) {
      emit(SignUpFailureState(e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBox = newValue;
    emit(TermsAndConditionUpdateState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
  }
//    addUserProfile() async {
//     CollectionReference users = FirebaseFirestore.instance.collection("users");
//     await users.add({
//       "full_name":fullName,
//       "email":email,
//       "phone_number" :phoneNumber,
//     });
//    }
}
