package com.conviva;

import java.util.HashMap;
import java.util.Map;

public class ConvivaContentInfo
{
  public static final String CDN_NAME_AKAMAI = "AKAMAI";
  public static final String CDN_NAME_AMAZON = "AMAZON";
  public static final String CDN_NAME_ATT = "ATT";
  public static final String CDN_NAME_BITGRAVITY = "BITGRAVITY";
  public static final String CDN_NAME_BT = "BT";
  public static final String CDN_NAME_CDNETWORKS = "CDNETWORKS";
  public static final String CDN_NAME_CDNVIDEO = "CDNVIDEO";
  public static final String CDN_NAME_CHINACACHE = "CHINACACHE";
  public static final String CDN_NAME_CHINANETCENTER = "CHINANETCENTER";
  public static final String CDN_NAME_COMCAST = "COMCAST";
  public static final String CDN_NAME_EDGECAST = "EDGECAST";
  public static final String CDN_NAME_FASTLY = "FASTLY";
  public static final String CDN_NAME_HIGHWINDS = "HIGHWINDS";
  public static final String CDN_NAME_INHOUSE = "INHOUSE";
  public static final String CDN_NAME_INTERNAP = "INTERNAP";
  public static final String CDN_NAME_IPONLY = "IPONLY";
  public static final String CDN_NAME_LEVEL3 = "LEVEL3";
  public static final String CDN_NAME_LIMELIGHT = "LIMELIGHT";
  public static final String CDN_NAME_MICROSOFT = "MICROSOFT";
  public static final String CDN_NAME_MIRRORIMAGE = "MIRRORIMAGE";
  public static final String CDN_NAME_NGENIX = "NGENIX";
  public static final String CDN_NAME_NICE = "NICE";
  public static final String CDN_NAME_OCTOSHAPE = "OCTOSHAPE";
  public static final String CDN_NAME_OTHER = "OTHER";
  public static final String CDN_NAME_QBRICK = "QBRICK";
  public static final String CDN_NAME_SWARMCAST = "SWARMCAST";
  public static final String CDN_NAME_TALKTALK = "TALKTALK";
  public static final String CDN_NAME_TELEFONICA = "TELEFONICA";
  public static final String CDN_NAME_TELENOR = "TELENOR";
  public static final String CDN_NAME_TELIA = "TELIA";
  public static final String CDN_NAME_VELOCIX = "VELOCIX";
  public static final String DEVICE_TYPE_CONSOLE = "Console";
  public static final String DEVICE_TYPE_MOBILE = "Mobile";
  public static final String DEVICE_TYPE_PC = "PC";
  public static final String DEVICE_TYPE_SET_TOP_BOX = "Settop";
  public static final String FRAMEWORK_NAME_BRIGHTCOVE = "Brightcove";
  public static final String FRAMEWORK_NAME_KALTURA = "Kaltura";
  public static final String FRAMEWORK_NAME_OOYALA = "Ooyala";
  public static final String FRAMEWORK_NAME_OSMF = "OSMF";
  public static final String FRAMEWORK_NAME_THE_PLATFORM = "thePlatform";
  public static final String PLUGIN_NAME_KALTURA = "ConvivaKalturaPlugin";
  public String assetName = null;
  public int defaultReportingBitrateKbps = -1;
  public String defaultReportingCdnName = "OTHER";
  public String defaultReportingResource = null;
  public String deviceId = null;
  public String deviceType = null;
  public String frameworkName = null;
  public String frameworkVersion = null;
  public Boolean isLive = Boolean.valueOf(false);
  public String playerName = null;
  public String pluginName = null;
  public String pluginVersion = null;
  public String streamUrl = null;
  public Map<String, String> tags;
  public String viewerId = null;
  
  public ConvivaContentInfo(String paramString, Map<String, String> paramMap)
  {
    assetName = paramString;
    tags = paramMap;
    if (paramMap == null) {
      new HashMap();
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.ConvivaContentInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */