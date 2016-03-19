package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.ek;

public class AdActivity
  extends Activity
{
  private ek a;
  
  private void a()
  {
    if (a != null) {}
    try
    {
      a.l();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public void onBackPressed()
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    try
    {
      if (a != null) {
        bool1 = a.e();
      }
      if (bool1) {
        super.onBackPressed();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
        bool1 = bool2;
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ej.a(this);
    if (a == null)
    {
      b.a(5);
      finish();
      return;
    }
    try
    {
      a.a(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      b.a(5);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (a != null) {
        a.k();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
      }
    }
  }
  
  protected void onPause()
  {
    try
    {
      if (a != null) {
        a.i();
      }
      super.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
        finish();
      }
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    try
    {
      if (a != null) {
        a.f();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
      finish();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      if (a != null) {
        a.h();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
      finish();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      if (a != null) {
        a.b(paramBundle);
      }
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
        finish();
      }
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    try
    {
      if (a != null) {
        a.g();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
      finish();
    }
  }
  
  protected void onStop()
  {
    try
    {
      if (a != null) {
        a.j();
      }
      super.onStop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
        finish();
      }
    }
  }
  
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    a();
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
    a();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */