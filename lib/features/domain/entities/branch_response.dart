class BranchResponse {
  String? id;
  String? companyId;
  String? name;
  String? address;
  String? city;
  bool? isActive;
  int? packageInformation;
  double? latitude;
  double? longitude;
  String? validUntil;
  String? recordTime;
  String? updateTime;

  BranchResponse(
      {this.id,
      this.companyId,
      this.name,
      this.address,
      this.city,
      this.isActive,
      this.packageInformation,
      this.latitude,
      this.longitude,
      this.validUntil,
      this.recordTime,
      this.updateTime});

  static List<BranchResponse> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => BranchResponse.fromJson(item)).toList();
  }

  BranchResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    name = json['name'];
    address = json['address'];
    city = json['city'];
    isActive = json['isActive'];
    packageInformation = json['packageInformation'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    validUntil = json['validUntil'];
    recordTime = json['recordTime'];
    updateTime = json['updateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['companyId'] = this.companyId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['city'] = this.city;
    data['isActive'] = this.isActive;
    data['packageInformation'] = this.packageInformation;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['validUntil'] = this.validUntil;
    data['recordTime'] = this.recordTime;
    data['updateTime'] = this.updateTime;
    return data;
  }
}
