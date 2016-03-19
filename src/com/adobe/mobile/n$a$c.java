package com.adobe.mobile;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

final class n$a$c
  implements DialogInterface.OnClickListener
{
  private final n a;
  
  public n$a$c(n paramn)
  {
    a = paramn;
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.f();
    a.f = false;
    Object localObject;
    if ((a.m != null) && (a.m.length() > 0))
    {
      localObject = new HashMap();
      if (am.d() != null) {
        break label160;
      }
      paramDialogInterface = "";
      ((HashMap)localObject).put("{userId}", paramDialogInterface);
      if (am.n() != null) {
        break label167;
      }
    }
    label160:
    label167:
    for (paramDialogInterface = "";; paramDialogInterface = am.n())
    {
      ((HashMap)localObject).put("{trackingId}", paramDialogInterface);
      ((HashMap)localObject).put("{messageId}", a.a);
      ((HashMap)localObject).put("{lifetimeValue}", e.a().toString());
      a.m = am.a(a.m, (Map)localObject);
      try
      {
        paramDialogInterface = am.u();
      }
      catch (am.a paramDialogInterface)
      {
        am.a(paramDialogInterface.getMessage(), new Object[0]);
        return;
      }
      try
      {
        localObject = new Intent("android.intent.action.VIEW");
        ((Intent)localObject).setData(Uri.parse(a.m));
        paramDialogInterface.startActivity((Intent)localObject);
        return;
      }
      catch (Exception paramDialogInterface)
      {
        am.c("Messages - Could not load click-through intent for message (%s)", new Object[] { paramDialogInterface.toString() });
      }
      paramDialogInterface = am.d();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.n.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */