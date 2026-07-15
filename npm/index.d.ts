declare module '@apiverve/phishingcheck' {
  export interface phishingcheckOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface phishingcheckResponse {
    status: string;
    error: string | null;
    data: PhishingDomainCheckerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PhishingDomainCheckerData {
      domain:        null | string;
      isPhishing:    boolean | null;
      matchedDomain: null | string;
      inputType:     null | string;
      originalInput: null | string;
      isPunycode:    boolean | null;
      isIPAddress:   boolean | null;
      riskScore:     number | null;
      riskLevel:     null | string;
  }

  export default class phishingcheckWrapper {
    constructor(options: phishingcheckOptions);

    execute(callback: (error: any, data: phishingcheckResponse | null) => void): Promise<phishingcheckResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: phishingcheckResponse | null) => void): Promise<phishingcheckResponse>;
    execute(query?: Record<string, any>): Promise<phishingcheckResponse>;
  }
}
