package com.cbs.app.livetv.widget;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class CustomTypefaceSpan
  extends MetricAffectingSpan
{
  private final Typeface a;
  
  public CustomTypefaceSpan(Typeface paramTypeface)
  {
    a = paramTypeface;
  }
  
  private void a(Paint paramPaint)
  {
    Typeface localTypeface = paramPaint.getTypeface();
    if (localTypeface != null) {}
    for (int i = localTypeface.getStyle();; i = 0)
    {
      i &= (a.getStyle() ^ 0xFFFFFFFF);
      if ((i & 0x1) != 0) {
        paramPaint.setFakeBoldText(true);
      }
      if ((i & 0x2) != 0) {
        paramPaint.setTextSkewX(-0.25F);
      }
      paramPaint.setTypeface(a);
      return;
    }
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    a(paramTextPaint);
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    a(paramTextPaint);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.CustomTypefaceSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */