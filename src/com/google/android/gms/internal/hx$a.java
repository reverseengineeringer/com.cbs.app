package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@fs
public final class hx$a
  extends MutableContextWrapper
{
  private Activity a;
  private Context b;
  private Context c;
  
  public hx$a(Context paramContext)
  {
    super(paramContext);
    setBaseContext(paramContext);
  }
  
  public final Activity a()
  {
    return a;
  }
  
  public final Context b()
  {
    return c;
  }
  
  public final Object getSystemService(String paramString)
  {
    return c.getSystemService(paramString);
  }
  
  public final void setBaseContext(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    if ((paramContext instanceof Activity)) {}
    for (Activity localActivity = (Activity)paramContext;; localActivity = null)
    {
      a = localActivity;
      c = paramContext;
      super.setBaseContext(b);
      return;
    }
  }
  
  public final void startActivity(Intent paramIntent)
  {
    if ((a != null) && (!ka.h()))
    {
      a.startActivity(paramIntent);
      return;
    }
    paramIntent.setFlags(268435456);
    b.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */