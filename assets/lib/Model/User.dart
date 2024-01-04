class UserModelWithToken {
  String? token;
  UserModel2? userModel;

  UserModelWithToken({this.token, this.userModel});

  UserModelWithToken.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userModel = json['user'] != null
        ? UserModel2.fromJson(json['user'])
       : null;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    if (userModel != null) {
      data['userModel'] = userModel!.to2Json(userModel!);
    }
    return data;
  }
}
class UserModel2 {
  String? id;
  String? name;
  String? level;
  String? pin;
  String? communityID;
  String? roomID;
  String? phoneNumber;
  String? whatsappNumber;
  String? email;

  UserModel2({
    this.id,
    this.name,
    this.level,
    this.pin,
    this.communityID,
    this.roomID,
    this.phoneNumber,
    this.whatsappNumber,
    this.email,
  });

  factory UserModel2.fromJson(Map parsedJson) =>
      UserModel2(
        id: parsedJson['_id'],
        name: parsedJson['Name'],
        level: parsedJson['level'],
        pin: parsedJson['pin'],
        communityID: parsedJson['communityID'],
        roomID: parsedJson['roomID'],
        phoneNumber: parsedJson['phoneNumber'],
        whatsappNumber: parsedJson['whatsappNumber'],
        email: parsedJson['email'],
      );

  Map<String, dynamic> to2Json(UserModel2 instance) =>
      <String, dynamic>{
        'name': instance.name,
        'level': instance.level,
        'pin': instance.pin,
        'communityID': instance.communityID,
        'roomID': instance.roomID,
        'phoneNumber': instance.phoneNumber,
        'whatsappNumber': instance.whatsappNumber,
        'email': instance.email,
      };
}






class UserModel {
  int? id;
  String? name;
  String? level;
  String? pin;
  String? communityID;
  String? roomID;
  String? phoneNumber;
  String? whatsappNumber;
  String? blockID;

  UserModel({
    this.id,
    this.name,
    this.level,
    this.pin,
    this.communityID,
    this.roomID,
    this.phoneNumber,
    this.whatsappNumber,
    this.blockID,
      });

  UserModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'] ;
    name = parsedJson['name'] ;
    level = parsedJson['level'] ;
    pin = parsedJson['pin'] ;
    communityID = parsedJson['communityID'] ;
    roomID = parsedJson['roomID'] ;
    phoneNumber = parsedJson['phoneNumber'] ;
    whatsappNumber = parsedJson['whatsappNumber'] ;
    blockID=parsedJson['blockID'];
  }

  Map<String,dynamic>toJson(UserModel instance)=><String,dynamic>{
    'name':instance.name,
    'level':instance.level,
    'pin':instance.pin,
    'communityID':instance.communityID,
    'roomID' :instance.roomID,
    'phoneNumber':instance.phoneNumber,
    'whatsappNumber':instance.whatsappNumber,
    'blockID':instance.blockID,
  };

}
