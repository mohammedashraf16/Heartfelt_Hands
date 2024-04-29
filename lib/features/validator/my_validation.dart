
class MyValidator{
  static String emailValidator(final String value){
    String message ='';
    if (value.trim().isEmpty)message='Please enter email';
    RegExp emailPattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(value.trim().isNotEmpty&&!emailPattern.hasMatch(value)){
      message='Please enter a valid email';
    }
    if(emailPattern.hasMatch(value)){
      message='email is valid';
    }
    return message;
  }

  static String passwordvalidator(final String value){
    String message='';
    if (value.trim().isEmpty)message='Please enter password';
    if (value.trim().isNotEmpty&&value.length<8){
      message='Password must contain 8 or more characters';
    }
    if (value.trim().isNotEmpty&&value.length>7){
      message='Password is valid';
    }
    return message;
  }
}