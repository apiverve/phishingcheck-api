# Phishing Domain Checker API - Ruby Gem

Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours from two independent blocklists covering 570,000+ phishing domains.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_phishingcheck'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_phishingcheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_phishingcheck'

# Initialize the client
client = APIVerve::Phishingcheck::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "centruldepiele.ro" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "centruldepiele.ro" })
  puts response["data"]
rescue APIVerve::Phishingcheck::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Phishingcheck::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Phishingcheck::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phishingcheck?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phishingcheck?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phishingcheck?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
