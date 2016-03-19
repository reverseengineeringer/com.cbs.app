package com.cbs.app.view;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.TextView;

final class IwantToSeeDialogFrag$a
  extends BaseAdapter
{
  String[] a;
  ColorStateList b;
  
  public IwantToSeeDialogFrag$a(IwantToSeeDialogFrag paramIwantToSeeDialogFrag, String[] paramArrayOfString)
  {
    a = paramArrayOfString;
    b = paramIwantToSeeDialogFrag.getResources().getColorStateList(2131558610);
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
      paramView = new TextView(IwantToSeeDialogFrag.b(c));
      paramView.setTextSize(IwantToSeeDialogFrag.c(c));
      paramView.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
      if (paramInt != IwantToSeeDialogFrag.d(c)) {
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

/* Location:
 * Qualified Name:     com.cbs.app.view.IwantToSeeDialogFrag.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */