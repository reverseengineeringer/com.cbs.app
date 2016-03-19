package com.cbs.app.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.urbanairship.p;
import com.urbanairship.push.j;

public class ChannelTapImageView
  extends ImageView
{
  GestureDetector a;
  private Context b;
  
  public ChannelTapImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b = paramContext;
    a = new GestureDetector(b, new a((byte)0));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return a.onTouchEvent(paramMotionEvent);
  }
  
  private final class a
    extends GestureDetector.SimpleOnGestureListener
  {
    private a() {}
    
    private void a()
    {
      String str = p.a().m().t();
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.SUBJECT", "Channel Id");
      localIntent.putExtra("android.intent.extra.TEXT", str);
      ChannelTapImageView.a(ChannelTapImageView.this).startActivity(Intent.createChooser(localIntent, "Share Push Channel Id"));
    }
    
    public final boolean onDoubleTap(MotionEvent paramMotionEvent)
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      new StringBuilder("Tapped at: (").append(f1).append(",").append(f2).append(")");
      a();
      return true;
    }
    
    public final boolean onDown(MotionEvent paramMotionEvent)
    {
      return true;
    }
    
    public final void onLongPress(MotionEvent paramMotionEvent)
    {
      super.onLongPress(paramMotionEvent);
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      new StringBuilder("onLongPress at: (").append(f1).append(",").append(f2).append(")");
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ChannelTapImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */