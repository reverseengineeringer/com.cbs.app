package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ConnectArchive
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ConnectArchive> CREATOR = new Parcelable.Creator()
  {
    public final ConnectArchive createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ConnectArchive(paramAnonymousParcel);
    }
    
    public final ConnectArchive[] newArray(int paramAnonymousInt)
    {
      return new ConnectArchive[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 1383342586946900969L;
  @JsonProperty("action_url")
  private String actionUrl;
  @JsonProperty("archive_type")
  private String archiveType;
  @JsonProperty("blog_search_field")
  private ArrayList<String> blogSearchField;
  @JsonProperty("changed_date")
  private long changedDate;
  @JsonProperty("copy")
  private String copy;
  @JsonProperty("created_date")
  private long createdDate;
  @JsonProperty("description")
  String description;
  @JsonProperty("embed_code")
  private String embedCode;
  @JsonProperty("event_date")
  private long eventDate;
  @JsonProperty("id")
  private String id;
  @JsonProperty("262x122_image")
  private String image262x122;
  @JsonProperty("270x170_image")
  private String image270x170;
  @JsonProperty("367x170image")
  private String image367x170;
  @JsonProperty("430x170_image")
  private String image430x170;
  @JsonProperty("515x350_image")
  private String image515x315;
  @JsonProperty("575x250_image")
  private String image575x250;
  @JsonProperty("890x250_image")
  private String image890x250;
  @JsonProperty("k")
  private String k;
  @JsonProperty("live_date")
  private long liveDate;
  @JsonProperty("pid")
  String pid;
  @JsonProperty("show_id")
  private long showId;
  @JsonProperty("text")
  private ArrayList<String> text;
  @JsonProperty("text_spell_field")
  private ArrayList<String> textSpellField;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  @JsonProperty("type_text_field")
  private ArrayList<String> typeTextField;
  
  public ConnectArchive() {}
  
  public ConnectArchive(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    createdDate = paramParcel.readLong();
    image430x170 = paramParcel.readString();
    changedDate = paramParcel.readLong();
    pid = paramParcel.readString();
    showId = paramParcel.readLong();
    liveDate = paramParcel.readLong();
    type = paramParcel.readString();
    text = paramParcel.readArrayList(String.class.getClassLoader());
    typeTextField = paramParcel.readArrayList(String.class.getClassLoader());
    image890x250 = paramParcel.readString();
    image367x170 = paramParcel.readString();
    k = paramParcel.readString();
    image270x170 = paramParcel.readString();
    id = paramParcel.readString();
    archiveType = paramParcel.readString();
    title = paramParcel.readString();
    textSpellField = paramParcel.readArrayList(String.class.getClassLoader());
    image262x122 = paramParcel.readString();
    image515x315 = paramParcel.readString();
    description = paramParcel.readString();
    eventDate = paramParcel.readLong();
    image575x250 = paramParcel.readString();
    embedCode = paramParcel.readString();
    actionUrl = paramParcel.readString();
    copy = paramParcel.readString();
    blogSearchField = paramParcel.readArrayList(String.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActionUrl()
  {
    return actionUrl;
  }
  
  public String getArchiveType()
  {
    return archiveType;
  }
  
  public ArrayList<String> getBlogSearchField()
  {
    return blogSearchField;
  }
  
  public long getChangedDate()
  {
    return changedDate;
  }
  
  public String getCopy()
  {
    return copy;
  }
  
  public long getCreatedDate()
  {
    return createdDate;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getEmbedCode()
  {
    return embedCode;
  }
  
  public long getEventDate()
  {
    return eventDate;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getImage262x122()
  {
    return image262x122;
  }
  
  public String getImage270x170()
  {
    return image270x170;
  }
  
  public String getImage367x170()
  {
    return image367x170;
  }
  
  public String getImage430x170()
  {
    return image430x170;
  }
  
  public String getImage515x315()
  {
    return image515x315;
  }
  
  public String getImage575x250()
  {
    return image575x250;
  }
  
  public String getImage890x250()
  {
    return image890x250;
  }
  
  public String getK()
  {
    return k;
  }
  
  public long getLiveDate()
  {
    return liveDate;
  }
  
  public String getPid()
  {
    return pid;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public ArrayList<String> getText()
  {
    return text;
  }
  
  public ArrayList<String> getTextSpellField()
  {
    return textSpellField;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getType()
  {
    return type;
  }
  
  public ArrayList<String> getTypeTextField()
  {
    return typeTextField;
  }
  
  public void setActionUrl(String paramString)
  {
    actionUrl = paramString;
  }
  
  public void setArchiveType(String paramString)
  {
    archiveType = paramString;
  }
  
  public void setBlogSearchField(ArrayList<String> paramArrayList)
  {
    blogSearchField = paramArrayList;
  }
  
  public void setChangedDate(long paramLong)
  {
    changedDate = paramLong;
  }
  
  public void setCopy(String paramString)
  {
    copy = paramString;
  }
  
  public void setCreatedDate(long paramLong)
  {
    createdDate = paramLong;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setEmbedCode(String paramString)
  {
    embedCode = paramString;
  }
  
  public void setEventDate(long paramLong)
  {
    eventDate = paramLong;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setImage262x122(String paramString)
  {
    image262x122 = paramString;
  }
  
  public void setImage270x170(String paramString)
  {
    image270x170 = paramString;
  }
  
  public void setImage367x170(String paramString)
  {
    image367x170 = paramString;
  }
  
  public void setImage430x170(String paramString)
  {
    image430x170 = paramString;
  }
  
  public void setImage515x315(String paramString)
  {
    image515x315 = paramString;
  }
  
  public void setImage575x250(String paramString)
  {
    image575x250 = paramString;
  }
  
  public void setImage890x250(String paramString)
  {
    image890x250 = paramString;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    liveDate = paramLong;
  }
  
  public void setPid(String paramString)
  {
    pid = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setText(ArrayList<String> paramArrayList)
  {
    text = paramArrayList;
  }
  
  public void setTextSpellField(ArrayList<String> paramArrayList)
  {
    textSpellField = paramArrayList;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setTypeTextField(ArrayList<String> paramArrayList)
  {
    typeTextField = paramArrayList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(createdDate);
    paramParcel.writeString(image430x170);
    paramParcel.writeLong(changedDate);
    paramParcel.writeString(pid);
    paramParcel.writeLong(showId);
    paramParcel.writeLong(liveDate);
    paramParcel.writeString(type);
    paramParcel.writeStringList(text);
    paramParcel.writeStringList(typeTextField);
    paramParcel.writeString(image890x250);
    paramParcel.writeString(image367x170);
    paramParcel.writeString(k);
    paramParcel.writeString(image270x170);
    paramParcel.writeString(id);
    paramParcel.writeString(archiveType);
    paramParcel.writeString(title);
    paramParcel.writeStringList(textSpellField);
    paramParcel.writeString(image262x122);
    paramParcel.writeString(image515x315);
    paramParcel.writeString(description);
    paramParcel.writeLong(eventDate);
    paramParcel.writeString(image575x250);
    paramParcel.writeString(embedCode);
    paramParcel.writeString(actionUrl);
    paramParcel.writeString(copy);
    paramParcel.writeStringList(blogSearchField);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ConnectArchive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */