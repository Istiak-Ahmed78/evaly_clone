import 'package:evaly_clone/utils/firebase/firebase_methodes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthStates { loggedIn, loggedOut }

class AuthMenagementProvider extends StateNotifier<AuthStates> {
  late FirebaseMethodes authMethodes;
  AuthMenagementProvider() : super(AuthStates.loggedOut) {
    authMethodes = FirebaseMethodes();
    getUser();
  }
  getUser() {
    if (authMethodes.getUserStutas() != null) state = AuthStates.loggedIn;
  }

  logIn(email, password) async {
    UserCredential? userCredential;
    userCredential = await authMethodes.logInWithEmailAndPassword(
        email: email, password: password);
    if (userCredential.user != null) state = AuthStates.loggedIn;
  }

  signUp(
      {required String email,
      required String password,
      required String firstName,
      required String latName,
      required String mobileNumber}) async {
    UserCredential? userCredential;
    userCredential = await authMethodes.signUpWithEmailAndPassword(
        email: email, password: password);
    if (userCredential.user != null) {
      state = AuthStates.loggedIn;
      //TODO add user data to datatbase
    }
  }

  signOut() async {
    await authMethodes.logOut();
  }

  signInWithPhoneNumber(String phoneNumber) async {
    // AuthCredential userCredential = AuthCredential();
    // FirebaseAuth
  }
}

final authStateManagementStateNotifier =
    StateNotifierProvider<AuthMenagementProvider, AuthStates>(
        (ref) => AuthMenagementProvider());
