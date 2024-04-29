
import 'package:flutter_test/flutter_test.dart';
import 'package:heartfelt_hands/features/validator/my_validation.dart';

void main(){
  test('empty email test', (){
    String result=MyValidator.emailValidator('');
    expect(result, 'Please enter email');
  });

  test('valid email test', (){
    String result=MyValidator.emailValidator('heartfelthands@gmail.com');
    expect(result, 'email is valid');
  });

  test('empty password test', () {
    String result =MyValidator.passwordvalidator('');
    expect(result, 'Please enter password');
  }
  );

  test('valid password test', () {
    String result=MyValidator.passwordvalidator('Heart9213');
    expect(result, 'Password is valid');
    });
}