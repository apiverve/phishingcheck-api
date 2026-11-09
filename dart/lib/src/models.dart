/// Response models for the Phishing Domain Checker API.

/// API Response wrapper.
class PhishingcheckResponse {
  final String status;
  final dynamic error;
  final PhishingcheckData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PhishingcheckResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PhishingcheckResponse.fromJson(Map<String, dynamic> json) => PhishingcheckResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PhishingcheckData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Phishing Domain Checker API.

class PhishingcheckData {
  String? domain;
  bool? isPhishing;
  String? matchedDomain;
  String? inputType;
  String? originalInput;
  bool? isPunycode;
  bool? isIpAddress;
  num? riskScore;
  String? riskLevel;
  List<String>? sources;

  PhishingcheckData({
    this.domain,
    this.isPhishing,
    this.matchedDomain,
    this.inputType,
    this.originalInput,
    this.isPunycode,
    this.isIpAddress,
    this.riskScore,
    this.riskLevel,
    this.sources,
  });

  factory PhishingcheckData.fromJson(Map<String, dynamic> json) => PhishingcheckData(
      domain: json['domain'],
      isPhishing: json['isPhishing'],
      matchedDomain: json['matchedDomain'],
      inputType: json['inputType'],
      originalInput: json['originalInput'],
      isPunycode: json['isPunycode'],
      isIpAddress: json['isIpAddress'],
      riskScore: json['riskScore'],
      riskLevel: json['riskLevel'],
      sources: (json['sources'] as List?)?.cast<String>(),
    );
}

class PhishingcheckRequest {
  String domain;

  PhishingcheckRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
