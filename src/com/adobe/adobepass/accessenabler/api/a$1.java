package com.adobe.adobepass.accessenabler.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

final class a$1
  extends Handler
{
  a$1(a parama) {}
  
  public final void handleMessage(Message paramMessage)
  {
    paramMessage = paramMessage.getData();
    String str1 = paramMessage.getString("url");
    Object localObject = paramMessage.getStringArrayList("domains");
    HashMap localHashMap = new HashMap();
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str2 = (String)((Iterator)localObject).next();
      localHashMap.put(str2, paramMessage.getStringArrayList(str2));
    }
    a.a(a, str1, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */