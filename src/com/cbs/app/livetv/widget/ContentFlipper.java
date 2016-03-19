package com.cbs.app.livetv.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.ViewFlipper;

public class ContentFlipper
  extends ViewFlipper
{
  private View a;
  private int b;
  
  public ContentFlipper(Context paramContext)
  {
    this(paramContext, -1);
  }
  
  public ContentFlipper(Context paramContext, int paramInt)
  {
    super(paramContext);
    b = paramInt;
    a(paramContext);
  }
  
  public ContentFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    ProgressBar localProgressBar = new ProgressBar(paramContext);
    localProgressBar.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
    addView(localProgressBar, 0);
    addView(new View(getContext()), 1);
    addView(new View(getContext()), 2);
    addView(new View(getContext()), 3);
    paramContext = LayoutInflater.from(paramContext).inflate(getMessageViewLayoutId(), null);
    if (paramContext != null)
    {
      a = paramContext;
      a(a, 2);
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    if ((paramView == null) || (paramView.getParent() != null)) {
      return;
    }
    removeViewAt(paramInt);
    addView(paramView, paramInt);
  }
  
  protected final View a()
  {
    return a;
  }
  
  public View getContentView()
  {
    return getChildAt(1);
  }
  
  public View getCustomView()
  {
    return getChildAt(3);
  }
  
  protected int getMessageViewLayoutId()
  {
    return b;
  }
  
  public void setContentView(View paramView)
  {
    a(paramView, 1);
  }
  
  public void setCustomView(View paramView)
  {
    a(paramView, 3);
  }
  
  public void setMessage(String paramString) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.ContentFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */