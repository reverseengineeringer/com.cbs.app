package com.cbs.app.pid;

import com.mdialog.android.Stream;
import java.util.List;
import org.w3c.dom.Document;

public class PidResponseHolder
{
  private String a = null;
  private String b = null;
  private Document c = null;
  private String d = null;
  private String e = null;
  private String f = null;
  private Document g = null;
  private String h = null;
  private Stream i = null;
  private long j;
  private List<CBSAd> k;
  private String l = null;
  
  public List<CBSAd> getAds()
  {
    return k;
  }
  
  public String getClosedCaptionUrl()
  {
    return e;
  }
  
  public long getDuration()
  {
    return j;
  }
  
  public String getGuid()
  {
    return l;
  }
  
  public String getOriginalSmilContentUrl()
  {
    return d;
  }
  
  public String getPid()
  {
    return a;
  }
  
  public Document getSmilDocument()
  {
    return c;
  }
  
  public String getSmilUrl()
  {
    return b;
  }
  
  public String getStreamingUrl()
  {
    return h;
  }
  
  public Document getVmapDocument()
  {
    return g;
  }
  
  public String getVmapUrl()
  {
    return f;
  }
  
  public Stream getmDialogStream()
  {
    return i;
  }
  
  public void setAds(List<CBSAd> paramList)
  {
    k = paramList;
  }
  
  public void setClosedCaptionUrl(String paramString)
  {
    e = paramString;
  }
  
  public void setDuration(long paramLong)
  {
    j = paramLong;
  }
  
  public void setGuid(String paramString)
  {
    l = paramString;
  }
  
  public void setOriginalSmilContentUrl(String paramString)
  {
    d = paramString;
  }
  
  public void setPid(String paramString)
  {
    a = paramString;
  }
  
  public void setSmilDocument(Document paramDocument)
  {
    c = paramDocument;
  }
  
  public void setSmilUrl(String paramString)
  {
    b = paramString;
  }
  
  public void setStreamingUrl(String paramString)
  {
    h = paramString;
  }
  
  public void setVmapDocument(Document paramDocument)
  {
    g = paramDocument;
  }
  
  public void setVmapUrl(String paramString)
  {
    f = paramString;
  }
  
  public void setmDialogStream(Stream paramStream)
  {
    i = paramStream;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.pid.PidResponseHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */