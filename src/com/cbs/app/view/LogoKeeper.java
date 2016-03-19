package com.cbs.app.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.utils.Util;
import java.util.Stack;

public class LogoKeeper
{
  public static Stack<String> a = new Stack();
  private static Drawable b;
  private static Drawable c;
  
  public LogoKeeper(Context paramContext)
  {
    if (c == null) {
      c = paramContext.getResources().getDrawable(2130837800);
    }
    a(paramContext);
  }
  
  public static Drawable a(String paramString)
  {
    return a(paramString, false);
  }
  
  public static Drawable a(String paramString, boolean paramBoolean)
  {
    if ((!paramBoolean) && ((paramString == null) || (((String)a.peek()).equals("Home")))) {
      return b;
    }
    return c;
  }
  
  public static void a(Context paramContext)
  {
    String str = AuthStatusManager.getUserStatusDescription();
    if ((!Util.G(paramContext)) && (str != null) && ((str.equals("subscriber")) || (str.equals("suspended"))))
    {
      b = paramContext.getResources().getDrawable(2130837695);
      return;
    }
    b = paramContext.getResources().getDrawable(2130837693);
  }
  
  public static Drawable b(Context paramContext)
  {
    a(paramContext);
    return b;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.LogoKeeper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */