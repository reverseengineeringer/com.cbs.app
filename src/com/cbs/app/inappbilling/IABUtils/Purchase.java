package com.cbs.app.inappbilling.IABUtils;

import org.json.JSONObject;

public class Purchase
{
  public boolean a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public long g;
  public int h;
  public String i;
  public String j;
  String k;
  
  public Purchase() {}
  
  public Purchase(String paramString1, String paramString2, String paramString3)
  {
    k = paramString1;
    i = paramString2;
    paramString1 = new JSONObject(i);
    f = paramString1.optString("orderId");
    b = paramString1.optString("packageName");
    c = paramString1.optString("productId");
    g = paramString1.optLong("purchaseTime");
    h = paramString1.optInt("purchaseState");
    d = paramString1.optString("developerPayload");
    e = paramString1.optString("token", paramString1.optString("purchaseToken"));
    a = paramString1.optBoolean("autoRenewing", false);
    j = paramString3;
  }
  
  public String getDeveloperPayload()
  {
    return d;
  }
  
  public String getItemType()
  {
    return k;
  }
  
  public String getOrderId()
  {
    return f;
  }
  
  public String getOriginalJson()
  {
    return i;
  }
  
  public String getPackageName()
  {
    return b;
  }
  
  public int getPurchaseState()
  {
    return h;
  }
  
  public long getPurchaseTime()
  {
    return g;
  }
  
  public String getSignature()
  {
    return j;
  }
  
  public String getSku()
  {
    return c;
  }
  
  public String getToken()
  {
    return e;
  }
  
  public String toString()
  {
    return "PurchaseInfo(type:" + k + "):" + i;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.Purchase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */