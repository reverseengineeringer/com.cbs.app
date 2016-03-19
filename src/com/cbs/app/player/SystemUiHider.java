package com.cbs.app.player;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public abstract class SystemUiHider
{
  private static OnVisibilityChangeListener e = new OnVisibilityChangeListener()
  {
    public final void a(boolean paramAnonymousBoolean) {}
  };
  protected OnVisibilityChangeListener a = e;
  protected AppCompatActivity b;
  protected View c;
  protected int d;
  
  protected SystemUiHider(Activity paramActivity, View paramView, int paramInt)
  {
    b = ((AppCompatActivity)paramActivity);
    c = paramView;
    d = paramInt;
  }
  
  public static SystemUiHider a(Activity paramActivity, View paramView)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return new SystemUiHiderHoneycomb(paramActivity, paramView, 6);
    }
    return new SystemUiHiderBase(paramActivity, paramView, 6);
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public abstract void c();
  
  public void setOnVisibilityChangeListener(OnVisibilityChangeListener paramOnVisibilityChangeListener)
  {
    OnVisibilityChangeListener localOnVisibilityChangeListener = paramOnVisibilityChangeListener;
    if (paramOnVisibilityChangeListener == null) {
      localOnVisibilityChangeListener = e;
    }
    a = localOnVisibilityChangeListener;
  }
  
  public static abstract interface OnVisibilityChangeListener
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SystemUiHider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */