# Phishing Domain Checker API - PHP Package

Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours from two independent blocklists covering 570,000+ phishing domains.

## Installation

Install via Composer:

```bash
composer require apiverve/phishingcheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Phishingcheck\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'centruldepiele.ro']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Phishingcheck\Client;
use APIVerve\Phishingcheck\Exceptions\APIException;
use APIVerve\Phishingcheck\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'centruldepiele.ro']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phishingcheck?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phishingcheck?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phishingcheck?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
