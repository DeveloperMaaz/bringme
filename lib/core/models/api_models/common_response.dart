import 'auth/api_message_model.dart';

class CommonResponse {
  dynamic data;
  List<ApiMessage>? messages;
  bool? hasErrors;
  bool? isValid;

  CommonResponse({this.data, this.messages, this.hasErrors, this.isValid});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    if (json['messages'] != null) {
      messages = <ApiMessage>[];
      json['messages'].forEach((v) {
        messages!.add(ApiMessage.fromJson(v));
      });
    }
    hasErrors = json['hasErrors'];
    isValid = json['isValid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.messages != null) {
      data['messages'] = this.messages!.map((v) => v.toJson()).toList();
    }
    data['hasErrors'] = this.hasErrors;
    data['isValid'] = this.isValid;
    return data;
  }
}


