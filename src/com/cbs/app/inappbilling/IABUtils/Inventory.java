package com.cbs.app.inappbilling.IABUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Inventory
{
  Map<String, SkuDetails> a = new HashMap();
  Map<String, Purchase> b = new HashMap();
  
  final List<String> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      Purchase localPurchase = (Purchase)localIterator.next();
      if (localPurchase.getItemType().equals(paramString)) {
        localArrayList.add(localPurchase.getSku());
      }
    }
    return localArrayList;
  }
  
  public final ArrayList<Purchase> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      Purchase localPurchase = (Purchase)localIterator.next();
      if (k.equals(paramString)) {
        localArrayList.add(localPurchase);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.Inventory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */