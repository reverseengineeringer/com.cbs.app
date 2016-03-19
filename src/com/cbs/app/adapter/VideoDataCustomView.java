package com.cbs.app.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cbs.app.view.ThumbNailView;

public class VideoDataCustomView
  extends FrameLayout
{
  public TextView a;
  public TextView b;
  public TextView c;
  public ThumbNailView d;
  private RelativeLayout e;
  private int f = 0;
  private int g = 0;
  
  public VideoDataCustomView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private VideoDataCustomView(Context paramContext, byte paramByte)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    d = new ThumbNailView(paramContext);
    d.setFlagVisibility(0);
    e = ((RelativeLayout)inflate(paramContext, 2130903077, null));
    b = ((TextView)e.findViewById(2131689649));
    a = ((TextView)e.findViewById(2131689650));
    c = ((TextView)e.findViewById(2131689651));
    float f1 = f * 0.07F / density;
    b.setTextSize(f1);
    a.setTextSize(f1 * 0.8F);
    c.setTextSize(f1 * 0.8F);
    b.setMaxLines(1);
    b.setEllipsize(TextUtils.TruncateAt.END);
    addView(d);
    addView(e);
    paramContext = paramContext.obtainStyledAttributes(new int[] { 16843534 });
    setForeground(paramContext.getDrawable(0));
    paramContext.recycle();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = d.getMeasuredHeight();
    d.layout(0, 0, paramInt3, paramInt1);
    e.layout(0, paramInt1, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = (int)(g * 0.72F);
    paramInt1 = View.MeasureSpec.makeMeasureSpec(f, 1073741824);
    int i = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
    d.measure(paramInt1, i);
    paramInt2 = View.MeasureSpec.makeMeasureSpec(g - paramInt2, 1073741824);
    e.measure(paramInt1, paramInt2);
    setMeasuredDimension(paramInt1, View.MeasureSpec.makeMeasureSpec(g, 1073741824));
  }
  
  public void setWidthAndHeight(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    g = paramInt2;
    invalidate();
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.VideoDataCustomView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */