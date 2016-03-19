package com.cbs.app.player;

import android.os.Build.VERSION;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.Window;

final class SystemUiHiderHoneycomb$1
  implements View.OnSystemUiVisibilityChangeListener
{
  SystemUiHiderHoneycomb$1(SystemUiHiderHoneycomb paramSystemUiHiderHoneycomb) {}
  
  public final void onSystemUiVisibilityChange(int paramInt)
  {
    if ((SystemUiHiderHoneycomb.a(a) & paramInt) != 0)
    {
      if (Build.VERSION.SDK_INT < 16)
      {
        a.b.getSupportActionBar().hide();
        a.b.getWindow().setFlags(1024, 1024);
      }
      a.a.a(false);
      SystemUiHiderHoneycomb.a(a, false);
      return;
    }
    a.c.setSystemUiVisibility(SystemUiHiderHoneycomb.b(a));
    if (Build.VERSION.SDK_INT < 16)
    {
      a.b.getSupportActionBar().show();
      a.b.getWindow().setFlags(0, 1024);
    }
    a.a.a(true);
    SystemUiHiderHoneycomb.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SystemUiHiderHoneycomb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */