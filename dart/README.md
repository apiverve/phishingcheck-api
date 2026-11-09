# Phishing Domain Checker API - Dart/Flutter Client

Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours from two independent blocklists covering 570,000+ phishing domains.

[![pub package](https://img.shields.io/pub/v/apiverve_phishingcheck.svg)](https://pub.dev/packages/apiverve_phishingcheck)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Phishing Domain Checker API](https://apiverve.com/marketplace/phishingcheck?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_phishingcheck: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_phishingcheck/apiverve_phishingcheck.dart';

void main() async {
  final client = PhishingcheckClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'centruldepiele.ro'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "secure-banking-login.suspicious-domain.com",
    "isPhishing": true,
    "matchedDomain": "suspicious-domain.com",
    "inputType": "url",
    "originalInput": "https://secure-banking-login.suspicious-domain.com/auth",
    "isPunycode": false,
    "isIpAddress": false,
    "riskScore": 85,
    "riskLevel": "high",
    "sources": [
      "phishing-database",
      "blocklistproject"
    ]
  }
}
```

## API Reference

- **API Home:** [Phishing Domain Checker API](https://apiverve.com/marketplace/phishingcheck?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/phishingcheck](https://docs.apiverve.com/ref/phishingcheck?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
