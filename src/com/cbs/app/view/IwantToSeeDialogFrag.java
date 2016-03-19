package com.cbs.app.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.cbs.app.view.utils.Util;

public class IwantToSeeDialogFrag
  extends DialogFragment
{
  private Context a;
  private int b;
  private IwantToSeeResponse c;
  private float d;
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = paramActivity;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    if (c != null) {
      c.b();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(a, 2131427646);
    Object localObject1 = paramBundle.getWindow();
    Object localObject2 = ((Window)localObject1).getAttributes();
    gravity = 49;
    ((Window)localObject1).setAttributes((WindowManager.LayoutParams)localObject2);
    paramBundle.setContentView(2130903195);
    localObject1 = (ListView)paramBundle.findViewById(2131690094);
    localObject2 = ((ListView)localObject1).getLayoutParams();
    Object localObject3 = a.getResources().getDisplayMetrics();
    int i = Math.min(widthPixels, heightPixels);
    if (Util.e(getActivity())) {}
    for (d = (i * 0.09F / density);; d = (i * 0.07F / density))
    {
      localObject3 = new TextView(a);
      ((TextView)localObject3).setTextSize(d);
      width = ((int)((TextView)localObject3).getPaint().measureText("Late Night "));
      localObject2 = getArguments();
      b = ((Bundle)localObject2).getInt("selected");
      ((ListView)localObject1).setAdapter(new a(((Bundle)localObject2).getStringArray("data")));
      ((ListView)localObject1).setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          if (IwantToSeeDialogFrag.a(IwantToSeeDialogFrag.this) != null) {
            IwantToSeeDialogFrag.a(IwantToSeeDialogFrag.this).b(paramAnonymousInt);
          }
          for (;;)
          {
            dismiss();
            return;
            Toast.makeText(IwantToSeeDialogFrag.b(IwantToSeeDialogFrag.this), "lost focus please try again", 1).show();
          }
        }
      });
      return paramBundle;
    }
  }
  
  public void setListener(IwantToSeeResponse paramIwantToSeeResponse)
  {
    c = paramIwantToSeeResponse;
  }
  
  public static abstract interface IwantToSeeResponse
  {
    public abstract void b();
    
    public abstract void b(int paramInt);
  }
  
  private final class a
    extends BaseAdapter
  {
    String[] a;
    ColorStateList b;
    
    public a(String[] paramArrayOfString)
    {
      a = paramArrayOfString;
      b = getResources().getColorStateList(2131558610);
    }
    
    public final int getCount()
    {
      return a.length;
    }
    
    public final long getItemId(int paramInt)
    {
      return 0L;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null)
      {
        paramView = new TextView(IwantToSeeDialogFrag.b(IwantToSeeDialogFrag.this));
        paramView.setTextSize(IwantToSeeDialogFrag.c(IwantToSeeDialogFrag.this));
        paramView.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
        if (paramInt != IwantToSeeDialogFrag.d(IwantToSeeDialogFrag.this)) {
          break label81;
        }
        paramView.setTextColor(-1);
      }
      for (;;)
      {
        paramView.setText(a[paramInt]);
        return paramView;
        paramView = (TextView)paramView;
        break;
        label81:
        paramView.setTextColor(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.IwantToSeeDialogFrag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */