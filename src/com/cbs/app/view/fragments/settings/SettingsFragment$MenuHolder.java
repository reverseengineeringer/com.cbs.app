package com.cbs.app.view.fragments.settings;

import android.support.v4.app.Fragment;

public class SettingsFragment$MenuHolder
{
  private String a;
  private String b;
  private String c;
  private Class<? extends Fragment> d;
  
  public SettingsFragment$MenuHolder(String paramString1, String paramString2, Class<? extends Fragment> paramClass, String paramString3)
  {
    if (paramClass != null)
    {
      SettingsFragment.f();
      new StringBuilder("contstructor name:").append(paramString1).append(" tag:").append(paramString2).append(" classType:").append(paramClass.getSimpleName());
    }
    b = paramString1;
    a = paramString2;
    d = paramClass;
    c = paramString3;
  }
  
  public String getName()
  {
    return b;
  }
  
  public String getTag()
  {
    return a;
  }
  
  public void setName(String paramString)
  {
    b = paramString;
  }
  
  public void setTag(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsFragment.MenuHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */