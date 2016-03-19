package com.cbs.app.player;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.Window;

@TargetApi(11)
public class SystemUiHiderHoneycomb
  extends SystemUiHiderBase
{
  private int e = 0;
  private int f = 1;
  private int g = 1;
  private boolean h = true;
  private View.OnSystemUiVisibilityChangeListener i = new View.OnSystemUiVisibilityChangeListener()
  {
    public final void onSystemUiVisibilityChange(int paramAnonymousInt)
    {
      if ((SystemUiHiderHoneycomb.a(SystemUiHiderHoneycomb.this) & paramAnonymousInt) != 0)
      {
        if (Build.VERSION.SDK_INT < 16)
        {
          b.getSupportActionBar().hide();
          b.getWindow().setFlags(1024, 1024);
        }
        a.a(false);
        SystemUiHiderHoneycomb.a(SystemUiHiderHoneycomb.this, false);
        return;
      }
      c.setSystemUiVisibility(SystemUiHiderHoneycomb.b(SystemUiHiderHoneycomb.this));
      if (Build.VERSION.SDK_INT < 16)
      {
        b.getSupportActionBar().show();
        b.getWindow().setFlags(0, 1024);
      }
      a.a(true);
      SystemUiHiderHoneycomb.a(SystemUiHiderHoneycomb.this, true);
    }
  };
  
  protected SystemUiHiderHoneycomb(Activity paramActivity, View paramView, int paramInt)
  {
    super(paramActivity, paramView, 6);
    if ((d & 0x2) != 0)
    {
      e |= 0x400;
      f |= 0x404;
    }
    if ((d & 0x6) != 0)
    {
      e |= 0x200;
      f |= 0x202;
      g |= 0x2;
    }
  }
  
  public final void a()
  {
    c.setOnSystemUiVisibilityChangeListener(i);
  }
  
  public final void b()
  {
    c.setSystemUiVisibility(f);
  }
  
  public final void c()
  {
    c.setSystemUiVisibility(e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SystemUiHiderHoneycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */