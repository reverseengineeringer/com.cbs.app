package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class ShareContent<P extends ShareContent, E extends Builder>
  implements ShareModel
{
  private final Uri contentUrl;
  private final List<String> peopleIds;
  private final String placeId;
  private final String ref;
  
  ShareContent(Parcel paramParcel)
  {
    contentUrl = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    peopleIds = readUnmodifiableStringList(paramParcel);
    placeId = paramParcel.readString();
    ref = paramParcel.readString();
  }
  
  protected ShareContent(Builder paramBuilder)
  {
    contentUrl = contentUrl;
    peopleIds = peopleIds;
    placeId = placeId;
    ref = ref;
  }
  
  private List<String> readUnmodifiableStringList(Parcel paramParcel)
  {
    ArrayList localArrayList = new ArrayList();
    paramParcel.readStringList(localArrayList);
    if (localArrayList.size() == 0) {
      return null;
    }
    return Collections.unmodifiableList(localArrayList);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Uri getContentUrl()
  {
    return contentUrl;
  }
  
  public List<String> getPeopleIds()
  {
    return peopleIds;
  }
  
  public String getPlaceId()
  {
    return placeId;
  }
  
  public String getRef()
  {
    return ref;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(contentUrl, 0);
    paramParcel.writeStringList(peopleIds);
    paramParcel.writeString(placeId);
    paramParcel.writeString(ref);
  }
  
  public static abstract class Builder<P extends ShareContent, E extends Builder>
    implements ShareModelBuilder<P, E>
  {
    private Uri contentUrl;
    private List<String> peopleIds;
    private String placeId;
    private String ref;
    
    public E readFrom(P paramP)
    {
      if (paramP == null) {
        return this;
      }
      return setContentUrl(paramP.getContentUrl()).setPeopleIds(paramP.getPeopleIds()).setPlaceId(paramP.getPlaceId()).setRef(paramP.getRef());
    }
    
    public E setContentUrl(Uri paramUri)
    {
      contentUrl = paramUri;
      return this;
    }
    
    public E setPeopleIds(List<String> paramList)
    {
      if (paramList == null) {}
      for (paramList = null;; paramList = Collections.unmodifiableList(paramList))
      {
        peopleIds = paramList;
        return this;
      }
    }
    
    public E setPlaceId(String paramString)
    {
      placeId = paramString;
      return this;
    }
    
    public E setRef(String paramString)
    {
      ref = paramString;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */