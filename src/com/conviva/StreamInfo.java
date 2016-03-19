package com.conviva;

public class StreamInfo
{
  private int _bitrateKbps = -1;
  private String _cdnName = null;
  private String _resource = null;
  
  public StreamInfo(int paramInt, String paramString1, String paramString2)
  {
    _bitrateKbps = paramInt;
    _cdnName = paramString1;
    if (_cdnName == null) {
      _cdnName = "OTHER";
    }
    _resource = paramString2;
  }
  
  public Boolean equals(StreamInfo paramStreamInfo)
  {
    if ((_bitrateKbps == paramStreamInfo.getBitrateKbps()) && (_resource == paramStreamInfo.getResource()) && (_cdnName == paramStreamInfo.getCdnName())) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public int getBitrateKbps()
  {
    return _bitrateKbps;
  }
  
  public String getCdnName()
  {
    return _cdnName;
  }
  
  public String getResource()
  {
    return _resource;
  }
}

/* Location:
 * Qualified Name:     com.conviva.StreamInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */