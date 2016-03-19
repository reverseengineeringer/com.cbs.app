package com.cbs.app.view.menu;

import android.support.v4.app.Fragment;

public class CBSMenuItem
{
  public String a;
  public String b;
  public Class<? extends Fragment> c;
  
  public CBSMenuItem(String paramString)
  {
    this(paramString, null, null);
  }
  
  public CBSMenuItem(String paramString1, String paramString2, Class<? extends Fragment> paramClass)
  {
    a = paramString1;
    b = paramString2;
    c = paramClass;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.menu.CBSMenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */