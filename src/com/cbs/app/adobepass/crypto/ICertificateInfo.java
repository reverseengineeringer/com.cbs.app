package com.cbs.app.adobepass.crypto;

import java.security.cert.Certificate;

public abstract interface ICertificateInfo
{
  public abstract Certificate getCertificate();
  
  public abstract Certificate[] getCertificateChain();
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.crypto.ICertificateInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */