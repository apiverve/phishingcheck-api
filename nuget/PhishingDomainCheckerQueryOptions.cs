using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PhishingDomainChecker
{
    /// <summary>
    /// Query options for the Phishing Domain Checker API
    /// </summary>
    public class PhishingDomainCheckerQueryOptions
    {
        /// <summary>
        /// The domain to check (e.g., example.com)
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
