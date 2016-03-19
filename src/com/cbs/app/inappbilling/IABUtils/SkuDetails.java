package com.cbs.app.inappbilling.IABUtils;

import org.json.JSONObject;

public class SkuDetails
{
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  
  public SkuDetails(String paramString1, String paramString2)
  {
    a = paramString1;
    g = paramString2;
    paramString1 = new JSONObject(g);
    b = paramString1.optString("productId");
    c = paramString1.optString("type");
    d = paramString1.optString("price");
    e = paramString1.optString("title");
    f = paramString1.optString("description");
  }
  
  public String getDescription()
  {
    return f;
  }
  
  public String getPrice()
  {
    return d;
  }
  
  public String getSku()
  {
    return b;
  }
  
  public String getTitle()
  {
    return e;
  }
  
  public String getType()
  {
    return c;
  }
  
  public String toString()
  {
    return "SkuDetails:" + g;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.SkuDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */