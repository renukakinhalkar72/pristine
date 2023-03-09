class Login_User {
  Result? result;
  Null? error;
  bool? status;

  Login_User({this.result, this.error, this.status});

  Login_User.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    error = json['error'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['error'] = this.error;
    data['status'] = this.status;
    return data;
  }
}

class Result {
  int? id;
  String? phoneNumber;
  String? name;
  String? userName;
  Null? password;
  String? email;
  Null? profileImageUrl;
  bool? deleted;
  String? businessName;
  Null? defaultLocation;
  Null? defaultTreatmentType;
  String? timestamp;
  Null? lastModifiedTimestamp;
  bool? admin;

  Result(
      {this.id,
      this.phoneNumber,
      this.name,
      this.userName,
      this.password,
      this.email,
      this.profileImageUrl,
      this.deleted,
      this.businessName,
      this.defaultLocation,
      this.defaultTreatmentType,
      this.timestamp,
      this.lastModifiedTimestamp,
      this.admin});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phoneNumber = json['phoneNumber'];
    name = json['name'];
    userName = json['userName'];
    password = json['password'];
    email = json['email'];
    profileImageUrl = json['profileImageUrl'];
    deleted = json['deleted'];
    businessName = json['businessName'];
    defaultLocation = json['defaultLocation'];
    defaultTreatmentType = json['defaultTreatmentType'];
    timestamp = json['timestamp'];
    lastModifiedTimestamp = json['lastModifiedTimestamp'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phoneNumber'] = this.phoneNumber;
    data['name'] = this.name;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['email'] = this.email;
    data['profileImageUrl'] = this.profileImageUrl;
    data['deleted'] = this.deleted;
    data['businessName'] = this.businessName;
    data['defaultLocation'] = this.defaultLocation;
    data['defaultTreatmentType'] = this.defaultTreatmentType;
    data['timestamp'] = this.timestamp;
    data['lastModifiedTimestamp'] = this.lastModifiedTimestamp;
    data['admin'] = this.admin;
    return data;
  }
}
