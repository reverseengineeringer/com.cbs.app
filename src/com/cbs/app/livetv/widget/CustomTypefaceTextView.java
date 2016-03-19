package com.cbs.app.livetv.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import com.cbs.app.R.styleable;
import com.cbs.app.livetv.util.TypefaceUtil;

public class CustomTypefaceTextView
  extends AppCompatTextView
{
  public CustomTypefaceTextView(Context paramContext)
  {
    super(paramContext);
    if (isInEditMode()) {
      return;
    }
    a(paramContext, null, 0);
  }
  
  public CustomTypefaceTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (isInEditMode()) {
      return;
    }
    a(paramContext, paramAttributeSet, 0);
  }
  
  public CustomTypefaceTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    if ((isInEditMode()) || (paramAttributeSet == null)) {
      return;
    }
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CustomTypefaceTextView, paramInt, 0);
    try
    {
      setTypeface(TypefaceUtil.a(paramContext, String.format("fonts/%s", new Object[] { paramAttributeSet.getString(0) })));
      setPaintFlags(getPaintFlags() | 0x80);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.CustomTypefaceTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */