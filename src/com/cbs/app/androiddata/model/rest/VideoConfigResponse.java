package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.VideoGroup;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoConfigResponse
  extends ResponseModel
{
  @JsonProperty("sectionIds")
  private ArrayList<Long> a = new ArrayList();
  @JsonProperty("numFound")
  private long b;
  @JsonProperty("success")
  private boolean c;
  @JsonProperty("videoSectionMetadata")
  private List<VideoSectionMetadata> d;
  @JsonProperty("videoConfigURL")
  private String e;
  @JsonProperty("section_display_seasons")
  private List<SectionDisplaySeasons> f;
  @JsonProperty("results")
  private List<VideoGroup> g;
  
  public long getNumFound()
  {
    return b;
  }
  
  public List<Long> getSectionIds()
  {
    return a;
  }
  
  public List<SectionDisplaySeasons> getSectiondDisplaySeasons()
  {
    return f;
  }
  
  public String getVideoConfigURL()
  {
    return e;
  }
  
  public List<VideoGroup> getVideoGroup()
  {
    return g;
  }
  
  public List<VideoSectionMetadata> getVideoSectionMetadata()
  {
    return d;
  }
  
  public void setNumFound(long paramLong)
  {
    b = paramLong;
  }
  
  public void setSectionIds(ArrayList<Long> paramArrayList)
  {
    a = paramArrayList;
  }
  
  public void setSectiondDisplaySeasons(List<SectionDisplaySeasons> paramList)
  {
    f = paramList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setVideoConfigURL(String paramString)
  {
    e = paramString;
  }
  
  public void setVideoGroup(List<VideoGroup> paramList)
  {
    g = paramList;
  }
  
  public void setVideoSectionMetadata(List<VideoSectionMetadata> paramList)
  {
    d = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoConfigResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */