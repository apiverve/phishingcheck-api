Pod::Spec.new do |s|
  s.name             = 'APIVervePhishingDomainChecker'
  s.version          = '1.2.3'
  s.summary          = 'Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known...'
  s.description      = <<-'DESC'
Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours from two independent blocklists covering 570,000+ phishing domains.

This iOS/macOS SDK provides a convenient way to access the Phishing Domain Checker from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/phishingcheck?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/phishingcheck-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVervePhishingDomainChecker/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
