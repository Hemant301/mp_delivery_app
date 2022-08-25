import 'package:food_delivery/const/storage.dart';

class UserCred {
  bool isUserLogin() {
    String isActive = StorageUtil.getString('USERID');
    //print("ff${isActive}ff");
    return isActive == '' ? false : true;
  }

  String getUserId() {
    String isActive = StorageUtil.getString('USERID');
    //print("ff${isActive}ff");
    return isActive;
  }

  String getPincode() {
    String isActive = StorageUtil.getString('PINCODE');
    return isActive;
  }

  String getProductAvail() {
    String isActive = StorageUtil.getString('PRODUCT');
    return isActive;
  }

  void addPincode(String pin) {
    StorageUtil.putString('PINCODE', '$pin');
  }

  void addProductAvail(String product) {
    StorageUtil.putString('PRODUCT', '$product');
  }
  // add data  of local storage

  void addName(String name) {
    StorageUtil.putString('NAME', '$name');
  }

  String getUserNmae() {
    String isActive = StorageUtil.getString('NAME');
    return isActive;
  }

  void addPhone(String phone) {
    StorageUtil.putString('PHONE', '$phone');
  }

  String getUserPhone() {
    String isActive = StorageUtil.getString('PHONE');
    return isActive;
  }

  void addAddres(String addres) {
    StorageUtil.putString('ADDRES', '$addres');
  }

  String getUserAddres() {
    String isActive = StorageUtil.getString('ADDRES');
    return isActive;
  }

  void addblodgroup(String blodgroop) {
    StorageUtil.putString('BLODGRUP', '$blodgroop');
  }

  String getUserBlodGroup() {
    String isActive = StorageUtil.getString('BLODGRUP');
    return isActive;
  }

  void addwallet(String wallet) {
    StorageUtil.putString('WALLET', '$wallet');
  }

  String getUserWallet() {
    String isActive = StorageUtil.getString('WALLET');
    return isActive;
  }

  void addvirtual_account_ifsc_code(String ifsc) {
    StorageUtil.putString('IFSC', '$ifsc');
  }

  String getUserIFSC() {
    String isActive = StorageUtil.getString('IFSC');
    return isActive;
  }

  void addempid(String empid) {
    StorageUtil.putString('EMPID', '$empid');
  }

  String getUserEmpid() {
    String isActive = StorageUtil.getString('EMPID');
    return isActive;
  }

  void addgender(String gender) {
    StorageUtil.putString('GENDER', '$gender');
  }

  String getUserGender() {
    String isActive = StorageUtil.getString('GENDER');
    return isActive;
  }

  void add_date_of_birth(String dob) {
    StorageUtil.putString('DOB', '$dob');
  }

  String getUserDOB() {
    String isActive = StorageUtil.getString('DOB');
    return isActive;
  }

  void addjoining_date(String joinDate) {
    StorageUtil.putString('JOINDATE', '$joinDate');
  }

  String getUserJoin_Date() {
    String isActive = StorageUtil.getString('JOINDATE');
    return isActive;
  }

  void addprofile_picture(String profile_Image) {
    StorageUtil.putString('ProfileImage', '$profile_Image');
  }

  String getUserProfile_Image() {
    String isActive = StorageUtil.getString('ProfileImage');
    return isActive;
  }

  void addvirtual_account_number(String virtual_account_number) {
    StorageUtil.putString('Virtual_account_number', '$virtual_account_number');
  }

  String getUservirtual_account_number() {
    String isActive = StorageUtil.getString('Virtual_account_number');
    return isActive;
  }

  String getUserFilledInfo() {
    String isActive = StorageUtil.getString('INFO');
    return isActive;
  }

  String getUserUploadPhoto() {
    String isActive = StorageUtil.getString('PHOTO');
    return isActive;
  }

  void addUserId(String id) {
    StorageUtil.putString('USERID', '$id');
  }

  void setUserFilledInfo(String info) {
    StorageUtil.putString('INFO', '$info');
  }

  void setUserUploadPhoto(String info) {
    StorageUtil.putString('PHOTO', '$info');
  }

  void logoutUser() {
    StorageUtil.putString('USERID', '');
    StorageUtil.putString('INFO', '');
    StorageUtil.putString('PHOTO', '');
    StorageUtil.putString('NAME', '');
    StorageUtil.putString('PHONE', '');
    StorageUtil.putString('ADDRES', '');
    StorageUtil.putString('BLODGRUP', '');
    StorageUtil.putString('WALLET', '');
    StorageUtil.putString('IFSC', '');
    StorageUtil.putString('EMPID', '');
    StorageUtil.putString('GENDER', '');
    StorageUtil.putString('DOB', '');
    StorageUtil.putString('JOINDATE', '');
    StorageUtil.putString('ProfileImage', '');
    StorageUtil.putString('Virtual_account_number', '');

    StorageUtil.clearAll();
  }
}

final userCred = UserCred();
