class ApiMessage {
  int? type;
  String? title;
  String? message;

  ApiMessage({this.type, this.title, this.message});

  ApiMessage.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = this.type;
    data['title'] = this.title;
    data['message'] = this.message;
    return data;
  }
}