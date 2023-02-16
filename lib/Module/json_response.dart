class JsonResponse {
  int? status;
  String? message;
  String? fullName;
  String? userName;
  String? userId;

  JsonResponse(
      {this.status, this.message, this.fullName, this.userName, this.userId});

  JsonResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    fullName = json['fullName'];
    userName = json['userName'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['fullName'] = this.fullName;
    data['userName'] = this.userName;
    data['userId'] = this.userId;
    return data;
  }
}
