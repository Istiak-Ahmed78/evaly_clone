import 'package:firebase_auth/firebase_auth.dart';

class FirebaseMethodes {
  late FirebaseAuth authReference;
  FirebaseMethodes() {
    authReference = FirebaseAuth.instance;
  }
  Future<UserCredential> logInWithEmailAndPassword(
          {required email, required password}) =>
      authReference.signInWithEmailAndPassword(
          email: email, password: password);
  Future<UserCredential> signUpWithEmailAndPassword(
          {required email, required password}) =>
      authReference.createUserWithEmailAndPassword(
          email: email, password: password);
  logOut() => authReference.signOut();
  User? getUserStutas() => authReference.currentUser;
 Future<ConfirmationResult> signInWithPhoneNumber(String phoneNumber) =>
    authReference.signInWithPhoneNumber(phoneNumber);
  
}
