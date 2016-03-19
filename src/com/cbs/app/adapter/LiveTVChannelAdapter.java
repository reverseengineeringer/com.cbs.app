package com.cbs.app.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.view.model.ChannelLogos;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import java.util.ArrayList;

public class LiveTVChannelAdapter
  extends BaseAdapter
{
  private static final String a = LiveTVChannelAdapter.class.getSimpleName();
  private final Context b;
  private final ArrayList<SyncbakChannel> c;
  private String d;
  private ArrayList<ChannelLogos> e;
  
  public int getCount()
  {
    if (c != null) {
      return c.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if (c != null) {
      return (SyncbakChannel)c.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    SyncbakChannel localSyncbakChannel = (SyncbakChannel)getItem(paramInt);
    Object localObject1 = paramView;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(b).inflate(2130903200, paramViewGroup, false);
      localObject1 = paramView;
      if (paramView != null)
      {
        localObject1 = paramView;
        if (localSyncbakChannel != null)
        {
          paramViewGroup = new a((byte)0);
          a = ((ImageView)paramView.findViewById(2131690117));
          b = ((TextView)paramView.findViewById(2131690118));
          c = ((TextView)paramView.findViewById(2131690119));
          localObject1 = new StateListDrawable();
          if ((e != null) && (e.size() > 0))
          {
            Object localObject3 = (ChannelLogos)e.get(paramInt);
            if (localObject3 != null)
            {
              Object localObject2 = ((ChannelLogos)localObject3).getSelectedImageBitmap();
              localObject3 = ((ChannelLogos)localObject3).getNormalImageBitmap();
              if (localObject2 != null)
              {
                localObject2 = new BitmapDrawable((Bitmap)localObject2);
                ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
              }
              if (localObject3 != null)
              {
                localObject2 = new BitmapDrawable((Bitmap)localObject3);
                ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
              }
            }
          }
          a.setImageDrawable((Drawable)localObject1);
          if (localSyncbakChannel.getName() != null) {
            b.setText(localSyncbakChannel.getName());
          }
          if (d != null) {
            c.setText(d);
          }
          paramView.setTag(localSyncbakChannel);
          localObject1 = paramView;
        }
      }
    }
    return (View)localObject1;
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
  
  private static final class a
  {
    ImageView a;
    TextView b;
    TextView c;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.LiveTVChannelAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */