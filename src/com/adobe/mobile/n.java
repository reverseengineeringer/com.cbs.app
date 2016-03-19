package com.adobe.mobile;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class n
  extends m
{
  protected String k;
  protected String l;
  protected String m;
  protected String n;
  protected String o;
  protected AlertDialog p;
  
  protected static void h()
  {
    m localm = ae.e();
    if ((localm == null) || (!(localm instanceof n))) {}
    while (g == am.v()) {
      return;
    }
    if ((p != null) && (p.isShowing())) {
      p.dismiss();
    }
    p = null;
  }
  
  protected final boolean b(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() <= 0)) {}
    while (!super.b(paramJSONObject)) {
      return false;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("payload");
      if (paramJSONObject.length() <= 0)
      {
        am.b("Messages - Unable to create alert message \"%s\", payload is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create alert message \"%s\", payload is required", new Object[] { a });
      return false;
    }
    try
    {
      k = paramJSONObject.getString("title");
      if (k.length() <= 0)
      {
        am.b("Messages - Unable to create alert message \"%s\", title is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create alert message \"%s\", title is required", new Object[] { a });
      return false;
    }
    try
    {
      l = paramJSONObject.getString("content");
      if (l.length() <= 0)
      {
        am.b("Messages - Unable to create alert message \"%s\", content is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create alert message \"%s\", content is required", new Object[] { a });
      return false;
    }
    try
    {
      n = paramJSONObject.getString("confirm");
      if (n.length() <= 0)
      {
        am.b("Messages - Unable to create alert message \"%s\", confirm is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create alert message \"%s\", confirm is required", new Object[] { a });
      return false;
    }
    try
    {
      o = paramJSONObject.getString("cancel");
      if (o.length() <= 0)
      {
        am.b("Messages - Unable to create alert message \"%s\", cancel is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create alert message \"%s\", cancel is required", new Object[] { a });
      return false;
    }
    try
    {
      m = paramJSONObject.getString("url");
      return true;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        am.c("Messages - Tried to read url for alert message but found none.  This is not a required field", new Object[0]);
      }
    }
  }
  
  protected final void d()
  {
    if (((o == null) || (o.length() <= 0)) && ((n == null) || (n.length() <= 0))) {
      return;
    }
    super.d();
    new Handler(Looper.getMainLooper()).post(new a(this));
  }
  
  private static final class a
    implements Runnable
  {
    private final n a;
    
    public a(n paramn)
    {
      a = paramn;
    }
    
    public final void run()
    {
      try
      {
        Object localObject = am.u();
        return;
      }
      catch (am.a locala)
      {
        try
        {
          localObject = new AlertDialog.Builder((Context)localObject);
          ((AlertDialog.Builder)localObject).setTitle(a.k);
          ((AlertDialog.Builder)localObject).setMessage(a.l);
          ((AlertDialog.Builder)localObject).setPositiveButton(a.n, new c(a));
          ((AlertDialog.Builder)localObject).setNegativeButton(a.o, new b(a));
          ((AlertDialog.Builder)localObject).setOnCancelListener(new a(a));
          a.p = ((AlertDialog.Builder)localObject).create();
          a.p.setCanceledOnTouchOutside(false);
          a.p.show();
          a.f = true;
          return;
        }
        catch (Exception localException)
        {
          am.c("Messages - Could not show alert message (%s)", new Object[] { localException.toString() });
        }
        locala = locala;
        am.a(locala.getMessage(), new Object[0]);
        return;
      }
    }
    
    private static final class a
      implements DialogInterface.OnCancelListener
    {
      private final n a;
      
      public a(n paramn)
      {
        a = paramn;
      }
      
      public final void onCancel(DialogInterface paramDialogInterface)
      {
        a.e();
        a.f = false;
      }
    }
    
    private static final class b
      implements DialogInterface.OnClickListener
    {
      private final n a;
      
      public b(n paramn)
      {
        a = paramn;
      }
      
      public final void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        a.e();
        a.f = false;
      }
    }
    
    private static final class c
      implements DialogInterface.OnClickListener
    {
      private final n a;
      
      public c(n paramn)
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
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */