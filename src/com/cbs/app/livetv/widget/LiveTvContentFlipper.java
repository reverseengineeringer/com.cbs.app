package com.cbs.app.livetv.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public class LiveTvContentFlipper
  extends ContentFlipper
{
  public LiveTvContentFlipper(Context paramContext)
  {
    super(paramContext);
  }
  
  public LiveTvContentFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public int getMessageViewLayoutId()
  {
    return 2130903313;
  }
  
  public void setMessage(String paramString)
  {
    View localView = a();
    if ((localView != null) && ((localView instanceof TextView))) {
      ((TextView)localView).setText(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.LiveTvContentFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */