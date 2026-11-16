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
        /// The domain to check (e.g., example.com). To check a raw IP host, send it through the url endpoint (e.g., http://1.2.3.4/)
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
