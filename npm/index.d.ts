declare module '@apiverve/phishingcheck' {
  export interface phishingcheckOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface phishingcheckResponse {
    status: string;
    error: string | null;
    data: PhishingDomainCheckerData;
    code?: number;
  }


  interface PhishingDomainCheckerData {
      domain:        string;
      isPhishing:    boolean;
      matchedDomain: string;
      inputType:     string;
      originalInput: string;
  }

  export default class phishingcheckWrapper {
    constructor(options: phishingcheckOptions);

    execute(callback: (error: any, data: phishingcheckResponse | null) => void): Promise<phishingcheckResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: phishingcheckResponse | null) => void): Promise<phishingcheckResponse>;
    execute(query?: Record<string, any>): Promise<phishingcheckResponse>;
  }
}
