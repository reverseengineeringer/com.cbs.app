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
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

final class n$a
  implements Runnable
{
  private final n a;
  
  public n$a(n paramn)
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

/* Location:
 * Qualified Name:     com.adobe.mobile.n.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */