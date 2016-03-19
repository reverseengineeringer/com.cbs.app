package com.cbs.app.visualon.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

@Deprecated
public class CBSSeekBar
  extends SeekBar
{
  public CBSSeekBar(Context paramContext)
  {
    super(paramContext);
  }
  
  public CBSSeekBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842875);
  }
  
  public CBSSeekBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (CBSPlayer.x()) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSSeekBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */