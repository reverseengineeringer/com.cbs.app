package com.cbs.app.player;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.Window;

public class SystemUiHiderBase
  extends SystemUiHider
{
  private boolean e = true;
  
  protected SystemUiHiderBase(Activity paramActivity, View paramView, int paramInt)
  {
    super(paramActivity, paramView, paramInt);
  }
  
  public void a()
  {
    if ((d & 0x1) == 0) {
      b.getWindow().setFlags(768, 768);
    }
  }
  
  public void b()
  {
    if ((d & 0x2) != 0) {
      b.getWindow().setFlags(1024, 1024);
    }
    a.a(false);
    e = false;
  }
  
  public void c()
  {
    if ((d & 0x2) != 0) {
      b.getWindow().setFlags(0, 1024);
    }
    a.a(true);
    e = true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SystemUiHiderBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */