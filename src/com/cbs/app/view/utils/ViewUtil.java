package com.cbs.app.view.utils;

import android.app.Dialog;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ViewUtil
{
  public static Button a(Dialog paramDialog)
  {
    paramDialog = paramDialog.findViewById(2131689869);
    if ((paramDialog != null) && ((paramDialog instanceof Button))) {
      return (Button)paramDialog;
    }
    return null;
  }
  
  public static FrameLayout a(View paramView)
  {
    if (paramView != null)
    {
      paramView = paramView.findViewById(2131690415);
      if ((paramView != null) && ((paramView instanceof FrameLayout))) {
        return (FrameLayout)paramView;
      }
    }
    return null;
  }
  
  public static TextView a(Dialog paramDialog, int paramInt)
  {
    paramDialog = paramDialog.findViewById(paramInt);
    if ((paramDialog != null) && ((paramDialog instanceof TextView))) {
      return (TextView)paramDialog;
    }
    return null;
  }
  
  public static TextView a(View paramView, int paramInt)
  {
    if (paramView != null)
    {
      paramView = paramView.findViewById(paramInt);
      if ((paramView != null) && ((paramView instanceof TextView))) {
        return (TextView)paramView;
      }
    }
    return null;
  }
  
  public static ImageView b(Dialog paramDialog, int paramInt)
  {
    paramDialog = paramDialog.findViewById(paramInt);
    if ((paramDialog != null) && ((paramDialog instanceof ImageView))) {
      return (ImageView)paramDialog;
    }
    return null;
  }
  
  public static LinearLayout b(Dialog paramDialog)
  {
    paramDialog = paramDialog.findViewById(2131689870);
    if ((paramDialog != null) && ((paramDialog instanceof LinearLayout))) {
      return (LinearLayout)paramDialog;
    }
    return null;
  }
  
  public static LinearLayout b(View paramView, int paramInt)
  {
    if (paramView != null)
    {
      paramView = paramView.findViewById(paramInt);
      if ((paramView != null) && ((paramView instanceof LinearLayout))) {
        return (LinearLayout)paramView;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ViewUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */