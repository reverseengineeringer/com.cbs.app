package com.cbs.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import com.cbs.app.R.styleable;

public class RobotoRegTextView
  extends TextView
{
  private static final String a = RobotoRegTextView.class.getSimpleName();
  
  public RobotoRegTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public RobotoRegTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public RobotoRegTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RobotoFontRegTextView);
    a(paramContext, paramAttributeSet.getString(0));
    paramAttributeSet.recycle();
  }
  
  private boolean a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = Typeface.createFromAsset(paramContext.getAssets(), paramString);
      setTypeface(paramContext);
      return true;
    }
    catch (Exception paramContext)
    {
      Log.e(a, "Could not get typeface: " + paramContext.getMessage());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.RobotoRegTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */