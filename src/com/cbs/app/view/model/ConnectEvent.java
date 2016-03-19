package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ConnectEvent
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ConnectEvent> CREATOR = new Parcelable.Creator()
  {
    public final ConnectEvent createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ConnectEvent(paramAnonymousParcel);
    }
    
    public final ConnectEvent[] newArray(int paramAnonymousInt)
    {
      return new ConnectEvent[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 7802089575290542828L;
  @JsonProperty("active_state")
  private String activeState;
  @JsonProperty("castId")
  private long castId;
  @JsonProperty("chat_name")
  private String chatName;
  @JsonProperty("conversation_link")
  private String conversationLink;
  @JsonProperty("end_date_sec")
  private long endDateSec;
  @JsonProperty("eventId")
  private long eventId;
  @JsonProperty("filepath_262x122Image")
  private String filepath262x122Image;
  @JsonProperty("filepath_270x170Imag")
  private String filepath270x170Image;
  @JsonProperty("filepath_367x170Image")
  private String filepath367x170Image;
  @JsonProperty("filepath_430x170Image")
  private String filepath430x170Image;
  @JsonProperty("filepath_515x350Imag")
  private String filepath515x350Image;
  @JsonProperty("filepath_575x250Image")
  private String filepath575x250Image;
  @JsonProperty("filepath_890x250Image")
  private String filepath890x250Image;
  @JsonProperty("filepath_largeUpcomingEventImage")
  private String filepathLargeUpcomingEventImage;
  @JsonProperty("filepath_liveimage")
  private String filepathLiveImage;
  @JsonProperty("filepath_smallUpcomingEventImage")
  private String filepathSmallUpcomingEventImage;
  @JsonProperty("filepath_takeoverimage")
  private String filepathTakeoverImage;
  @JsonProperty("flash_embed")
  private String flashEmbed;
  @JsonProperty("iPadConnectFilepath")
  private String iPadConnectFilepath;
  @JsonProperty("id")
  private long id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("layoutType")
  private String layoutType;
  @JsonProperty("live_date_sec")
  private long liveDateSec;
  @JsonProperty("nextEventId")
  private long nextEventId;
  @JsonProperty("nextEventTitle")
  private String nextEventTitle;
  @JsonProperty("qandAAnswerFeedUrl")
  private String qAndAAnswerFeedUrl;
  @JsonProperty("qandATwitterHashtags")
  private String qAndATwitterHashtags;
  @JsonProperty("qandAWebHeaderImageFilepath")
  private String qAndAWebHeaderImageFilepath;
  @JsonProperty("qandAWidget")
  private String qAndAWidget;
  @JsonProperty("rsvp_link")
  private String rsvpLink;
  @JsonProperty("show_id")
  private long showId;
  @JsonProperty("start_date_sec")
  private long startDateSec;
  @JsonProperty("takeover_text")
  private String takeoverText;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  @JsonProperty("videoStreamUrlOrPid")
  private String videoStreamUrlOrPid;
  
  public ConnectEvent() {}
  
  public ConnectEvent(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActiveState()
  {
    return activeState;
  }
  
  public long getCastId()
  {
    return castId;
  }
  
  public String getChatName()
  {
    return chatName;
  }
  
  public String getConversationLink()
  {
    return conversationLink;
  }
  
  public long getEndDateSec()
  {
    return endDateSec;
  }
  
  public long getEventId()
  {
    return eventId;
  }
  
  public String getFilepath262x122Image()
  {
    return filepath262x122Image;
  }
  
  public String getFilepath270x170Image()
  {
    return filepath270x170Image;
  }
  
  public String getFilepath367x170Image()
  {
    return filepath367x170Image;
  }
  
  public String getFilepath430x170Image()
  {
    return filepath430x170Image;
  }
  
  public String getFilepath515x350Image()
  {
    return filepath515x350Image;
  }
  
  public String getFilepath575x250Image()
  {
    return filepath575x250Image;
  }
  
  public String getFilepath890x250Image()
  {
    return filepath890x250Image;
  }
  
  public String getFilepathLargeUpcomingEventImage()
  {
    return filepathLargeUpcomingEventImage;
  }
  
  public String getFilepathLiveImage()
  {
    return filepathLiveImage;
  }
  
  public String getFilepathSmallUpcomingEventImage()
  {
    return filepathSmallUpcomingEventImage;
  }
  
  public String getFilepathTakeoverImage()
  {
    return filepathTakeoverImage;
  }
  
  public String getFlashEmbed()
  {
    return flashEmbed;
  }
  
  public long getId()
  {
    return id;
  }
  
  public String getK()
  {
    return k;
  }
  
  public String getLayoutType()
  {
    return layoutType;
  }
  
  public long getLiveDateSec()
  {
    return liveDateSec;
  }
  
  public long getNextEventId()
  {
    return nextEventId;
  }
  
  public String getNextEventTitle()
  {
    return nextEventTitle;
  }
  
  public String getRsvpLink()
  {
    return rsvpLink;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public long getStartDateSec()
  {
    return startDateSec;
  }
  
  public String getTakeoverText()
  {
    return takeoverText;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getType()
  {
    return type;
  }
  
  public String getVideoStreamUrlOrPid()
  {
    return videoStreamUrlOrPid;
  }
  
  public String getiPadConnectFilepath()
  {
    return iPadConnectFilepath;
  }
  
  public String getqAndAAnswerFeedUrl()
  {
    return qAndAAnswerFeedUrl;
  }
  
  public String getqAndATwitterHashtags()
  {
    return qAndATwitterHashtags;
  }
  
  public String getqAndAWebHeaderImageFilepath()
  {
    return qAndAWebHeaderImageFilepath;
  }
  
  public String getqAndAWidget()
  {
    return qAndAWidget;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    type = paramParcel.readString();
    title = paramParcel.readString();
    showId = paramParcel.readLong();
    eventId = paramParcel.readLong();
    castId = paramParcel.readLong();
    k = paramParcel.readString();
    liveDateSec = paramParcel.readLong();
    nextEventTitle = paramParcel.readString();
    nextEventId = paramParcel.readLong();
    endDateSec = paramParcel.readLong();
    startDateSec = paramParcel.readLong();
    flashEmbed = paramParcel.readString();
    activeState = paramParcel.readString();
    filepathSmallUpcomingEventImage = paramParcel.readString();
    filepathLargeUpcomingEventImage = paramParcel.readString();
    filepathLiveImage = paramParcel.readString();
    filepathTakeoverImage = paramParcel.readString();
    rsvpLink = paramParcel.readString();
    conversationLink = paramParcel.readString();
    takeoverText = paramParcel.readString();
    chatName = paramParcel.readString();
    layoutType = paramParcel.readString();
    iPadConnectFilepath = paramParcel.readString();
    videoStreamUrlOrPid = paramParcel.readString();
    qAndAWidget = paramParcel.readString();
    qAndAAnswerFeedUrl = paramParcel.readString();
    qAndATwitterHashtags = paramParcel.readString();
    qAndAWebHeaderImageFilepath = paramParcel.readString();
    filepath890x250Image = paramParcel.readString();
    filepath515x350Image = paramParcel.readString();
    filepath430x170Image = paramParcel.readString();
    filepath367x170Image = paramParcel.readString();
    filepath575x250Image = paramParcel.readString();
    filepath262x122Image = paramParcel.readString();
    filepath270x170Image = paramParcel.readString();
  }
  
  public void setActiveState(String paramString)
  {
    activeState = paramString;
  }
  
  public void setCastId(long paramLong)
  {
    castId = paramLong;
  }
  
  public void setChatName(String paramString)
  {
    chatName = paramString;
  }
  
  public void setConversationLink(String paramString)
  {
    conversationLink = paramString;
  }
  
  public void setEndDateSec(long paramLong)
  {
    endDateSec = paramLong;
  }
  
  public void setEventId(long paramLong)
  {
    eventId = paramLong;
  }
  
  public void setFilepath262x122Image(String paramString)
  {
    filepath262x122Image = paramString;
  }
  
  public void setFilepath270x170Image(String paramString)
  {
    filepath270x170Image = paramString;
  }
  
  public void setFilepath367x170Image(String paramString)
  {
    filepath367x170Image = paramString;
  }
  
  public void setFilepath430x170Image(String paramString)
  {
    filepath430x170Image = paramString;
  }
  
  public void setFilepath515x350Image(String paramString)
  {
    filepath515x350Image = paramString;
  }
  
  public void setFilepath575x250Image(String paramString)
  {
    filepath575x250Image = paramString;
  }
  
  public void setFilepath890x250Image(String paramString)
  {
    filepath890x250Image = paramString;
  }
  
  public void setFilepathLargeUpcomingEventImage(String paramString)
  {
    filepathLargeUpcomingEventImage = paramString;
  }
  
  public void setFilepathLiveImage(String paramString)
  {
    filepathLiveImage = paramString;
  }
  
  public void setFilepathSmallUpcomingEventImage(String paramString)
  {
    filepathSmallUpcomingEventImage = paramString;
  }
  
  public void setFilepathTakeoverImage(String paramString)
  {
    filepathTakeoverImage = paramString;
  }
  
  public void setFlashEmbed(String paramString)
  {
    flashEmbed = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLayoutType(String paramString)
  {
    layoutType = paramString;
  }
  
  public void setLiveDateSec(long paramLong)
  {
    liveDateSec = paramLong;
  }
  
  public void setNextEventId(long paramLong)
  {
    nextEventId = paramLong;
  }
  
  public void setNextEventTitle(String paramString)
  {
    nextEventTitle = paramString;
  }
  
  public void setRsvpLink(String paramString)
  {
    rsvpLink = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setStartDateSec(long paramLong)
  {
    startDateSec = paramLong;
  }
  
  public void setTakeoverText(String paramString)
  {
    takeoverText = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setVideoStreamUrlOrPid(String paramString)
  {
    videoStreamUrlOrPid = paramString;
  }
  
  public void setiPadConnectFilepath(String paramString)
  {
    iPadConnectFilepath = paramString;
  }
  
  public void setqAndAAnswerFeedUrl(String paramString)
  {
    qAndAAnswerFeedUrl = paramString;
  }
  
  public void setqAndATwitterHashtags(String paramString)
  {
    qAndATwitterHashtags = paramString;
  }
  
  public void setqAndAWebHeaderImageFilepath(String paramString)
  {
    qAndAWebHeaderImageFilepath = paramString;
  }
  
  public void setqAndAWidget(String paramString)
  {
    qAndAWidget = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(type);
    paramParcel.writeString(title);
    paramParcel.writeLong(showId);
    paramParcel.writeLong(eventId);
    paramParcel.writeLong(castId);
    paramParcel.writeString(k);
    paramParcel.writeLong(liveDateSec);
    paramParcel.writeString(nextEventTitle);
    paramParcel.writeLong(nextEventId);
    paramParcel.writeLong(endDateSec);
    paramParcel.writeLong(startDateSec);
    paramParcel.writeString(flashEmbed);
    paramParcel.writeString(activeState);
    paramParcel.writeString(filepathSmallUpcomingEventImage);
    paramParcel.writeString(filepathLargeUpcomingEventImage);
    paramParcel.writeString(filepathLiveImage);
    paramParcel.writeString(filepathTakeoverImage);
    paramParcel.writeString(rsvpLink);
    paramParcel.writeString(conversationLink);
    paramParcel.writeString(takeoverText);
    paramParcel.writeString(chatName);
    paramParcel.writeString(layoutType);
    paramParcel.writeString(iPadConnectFilepath);
    paramParcel.writeString(videoStreamUrlOrPid);
    paramParcel.writeString(qAndAWidget);
    paramParcel.writeString(qAndAAnswerFeedUrl);
    paramParcel.writeString(qAndATwitterHashtags);
    paramParcel.writeString(qAndAWebHeaderImageFilepath);
    paramParcel.writeString(filepath890x250Image);
    paramParcel.writeString(filepath515x350Image);
    paramParcel.writeString(filepath430x170Image);
    paramParcel.writeString(filepath367x170Image);
    paramParcel.writeString(filepath575x250Image);
    paramParcel.writeString(filepath262x122Image);
    paramParcel.writeString(filepath270x170Image);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ConnectEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */