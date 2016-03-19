package com.cbs.app.view.model;

import android.graphics.Bitmap;
import com.cbs.app.view.model.syncbak.SyncbakChannel;

public class ChannelLogos
{
  private SyncbakChannel channelName;
  private Bitmap normalImageBitmap;
  private String normalImageUrl;
  private Bitmap selectedImageBitmap;
  private String selectedImageUrl;
  
  public SyncbakChannel getChannelName()
  {
    return channelName;
  }
  
  public Bitmap getNormalImageBitmap()
  {
    return normalImageBitmap;
  }
  
  public String getNormalImageUrl()
  {
    return normalImageUrl;
  }
  
  public Bitmap getSelectedImageBitmap()
  {
    return selectedImageBitmap;
  }
  
  public String getSelectedImageUrl()
  {
    return selectedImageUrl;
  }
  
  public void setChannelName(SyncbakChannel paramSyncbakChannel)
  {
    channelName = paramSyncbakChannel;
  }
  
  public void setNormalImageBitmap(Bitmap paramBitmap)
  {
    normalImageBitmap = paramBitmap;
  }
  
  public void setNormalImageUrl(String paramString)
  {
    normalImageUrl = paramString;
  }
  
  public void setSelectedImageBitmap(Bitmap paramBitmap)
  {
    selectedImageBitmap = paramBitmap;
  }
  
  public void setSelectedImageUrl(String paramString)
  {
    selectedImageUrl = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ChannelLogos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */