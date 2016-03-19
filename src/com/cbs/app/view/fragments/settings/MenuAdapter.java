package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.utils.Util;

public class MenuAdapter
  extends ArrayAdapter<SettingsFragment.MenuHolder>
{
  private static final String a = MenuAdapter.class.getSimpleName();
  private Context b;
  private int c = -1;
  
  public MenuAdapter(Context paramContext)
  {
    super(paramContext, 0);
    b = paramContext;
  }
  
  private View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(2130903261, paramViewGroup, false);
      if (localObject == null) {
        break label205;
      }
      paramView = new b();
      paramViewGroup = ((View)localObject).findViewById(2131689816);
      if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView))) {
        a = ((TextView)paramViewGroup);
      }
      ((View)localObject).setTag(paramView);
    }
    for (;;)
    {
      paramViewGroup = paramView;
      paramView = (View)localObject;
      if (paramView != null)
      {
        if (paramInt != c) {
          break label170;
        }
        paramView.setSelected(true);
        paramView.setBackgroundResource(2130838026);
      }
      for (;;)
      {
        localObject = (SettingsFragment.MenuHolder)getItem(paramInt);
        if ((localObject != null) && (paramViewGroup != null))
        {
          a.setText(((SettingsFragment.MenuHolder)localObject).getName());
          if (paramInt != c) {
            break label184;
          }
          a.setTextColor(b.getResources().getColor(17170443));
        }
        return paramView;
        paramViewGroup = (b)paramView.getTag();
        break;
        label170:
        paramView.setSelected(false);
        paramView.setBackgroundResource(2130837981);
      }
      label184:
      a.setTextColor(b.getResources().getColor(2131558439));
      return paramView;
      label205:
      paramView = null;
    }
  }
  
  private View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1 = null;
    Object localObject2;
    if (paramView == null)
    {
      paramView = new a();
      localObject1 = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(2130903257, paramViewGroup, false);
      paramViewGroup = paramView;
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        paramViewGroup = ((View)localObject1).findViewById(2131690217);
        if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView))) {
          a = ((TextView)paramViewGroup);
        }
        paramViewGroup = ((View)localObject1).findViewById(2131690218);
        if ((paramViewGroup != null) && ((paramViewGroup instanceof Button))) {
          b = ((Button)paramViewGroup);
        }
        ((View)localObject1).setTag(paramView);
        localObject2 = localObject1;
        paramViewGroup = paramView;
      }
    }
    for (;;)
    {
      Context localContext;
      if (((SettingsFragment.MenuHolder)getItem(paramInt) != null) && (paramViewGroup != null)) {
        if (a != null)
        {
          localObject3 = "";
          localContext = b.getApplicationContext();
          if (localContext != null)
          {
            paramView = (View)localObject3;
            if (localContext.getPackageManager() != null) {
              localObject1 = localObject3;
            }
          }
        }
      }
      try
      {
        paramView = localContext.getPackageManager().getPackageInfo(localContext.getPackageName(), 0);
        localObject1 = localObject3;
        localObject3 = versionName;
        localObject1 = localObject3;
        int i = versionCode;
        paramView = (View)localObject3;
        localObject1 = localObject3;
        if (Util.m(b))
        {
          localObject1 = localObject3;
          paramView = (String)localObject3 + " " + i;
        }
      }
      catch (PackageManager.NameNotFoundException paramView)
      {
        for (;;)
        {
          Log.e(a, "package info not found");
          paramView = (View)localObject1;
          continue;
          a.setTextColor(b.getResources().getColor(2131558436));
        }
        b.setEnabled(false);
        b.setAlpha(0.7F);
      }
      a.setText(paramView);
      if (paramInt != c) {
        break;
      }
      a.setTextColor(b.getResources().getColor(17170443));
      if (b != null)
      {
        if (!Util.s(b)) {
          break label417;
        }
        b.setEnabled(true);
        b.setAlpha(1.0F);
        b.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = Build.MANUFACTURER;
            int j = 0;
            int i = j;
            if (paramAnonymousView != null)
            {
              i = j;
              if (paramAnonymousView.contains("Amazon")) {
                i = 1;
              }
            }
            if (i != 0) {}
            for (paramAnonymousView = "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app";; paramAnonymousView = "https://play.google.com/store/apps/details?id=com.cbs.app")
            {
              paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousView));
              paramAnonymousView.addFlags(268435456);
              MenuAdapter.a(MenuAdapter.this).startActivity(paramAnonymousView);
              return;
            }
          }
        });
      }
      return (View)localObject2;
      Object localObject3 = paramView.getTag();
      paramViewGroup = (ViewGroup)localObject1;
      localObject2 = paramView;
      if (localObject3 != null)
      {
        paramViewGroup = (ViewGroup)localObject1;
        localObject2 = paramView;
        if ((localObject3 instanceof a))
        {
          paramViewGroup = (a)localObject3;
          localObject2 = paramView;
        }
      }
    }
    label417:
    return (View)localObject2;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((Util.g(b)) || (Util.f(b))) {}
    switch (paramInt)
    {
    default: 
      return 3;
    case 0: 
      return 1;
    }
    if (((SettingsFragment.MenuHolder)getItem(paramInt)).getTag().equals("settingsappversion_fragment")) {}
    for (paramInt = 0;; paramInt = 3) {
      return paramInt;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return a(paramInt, paramView, paramViewGroup);
    case 0: 
      if ((Util.i(b)) || (Util.j(b))) {
        return a(paramInt, paramView, paramViewGroup);
      }
      return b(paramInt, paramView, paramViewGroup);
    }
    if ((Util.i(b)) || (Util.j(b))) {
      return a(paramInt, paramView, paramViewGroup);
    }
    if (paramView == null) {
      paramView = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(2130903256, paramViewGroup, false);
    }
    for (;;)
    {
      if (Util.a(b, Util.B(b), "CBS_COM") == null)
      {
        SVODPopupHelper.setWeWantToSeeVideo(null);
        SVODPopupHelper.setWeWantToSeeShow(null);
        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
        AccountUIHelper.a(b, (ViewGroup)paramView);
        return paramView;
      }
      AccountUIHelper.b(b, (ViewGroup)paramView);
      return paramView;
    }
  }
  
  public int getViewTypeCount()
  {
    int i = 4;
    if ((Util.i(b)) || (Util.j(b))) {
      i = 1;
    }
    return i;
  }
  
  public void setSelected(int paramInt)
  {
    c = paramInt;
    notifyDataSetChanged();
  }
  
  static final class a
  {
    TextView a;
    Button b;
  }
  
  static final class b
  {
    TextView a;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.MenuAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */