package com.cbs.app.livetv.widget;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public class NoUnderlineClickableSpan
  extends ClickableSpan
{
  public void onClick(View paramView) {}
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.NoUnderlineClickableSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */