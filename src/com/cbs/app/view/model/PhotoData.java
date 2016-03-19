package com.cbs.app.view.model;

import android.graphics.Bitmap;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PhotoData
  implements Serializable
{
  private static final long serialVersionUID = -6451783503071584885L;
  private Bitmap imageBitmap;
  private String photoCaption;
  private int photoId;
  private String photoPath;
  
  public Bitmap getImageBitmap()
  {
    return imageBitmap;
  }
  
  public String getPhotoCaption()
  {
    return photoCaption;
  }
  
  public int getPhotoId()
  {
    return photoId;
  }
  
  public String getPhotoPath()
  {
    return photoPath;
  }
  
  public void setId(int paramInt)
  {
    photoId = paramInt;
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    imageBitmap = paramBitmap;
  }
  
  public void setPhotoCaption(String paramString)
  {
    photoCaption = paramString;
  }
  
  public void setPhotoPath(String paramString)
  {
    photoPath = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.PhotoData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */