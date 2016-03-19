package com.facebook.internal;

import java.util.Map;

public class Utility$FetchedAppSettings
{
  private Map<String, Map<String, Utility.DialogFeatureConfig>> dialogConfigMap;
  private FacebookRequestErrorClassification errorClassification;
  private String nuxContent;
  private boolean nuxEnabled;
  private boolean supportsImplicitLogging;
  
  private Utility$FetchedAppSettings(boolean paramBoolean1, String paramString, boolean paramBoolean2, Map<String, Map<String, Utility.DialogFeatureConfig>> paramMap, FacebookRequestErrorClassification paramFacebookRequestErrorClassification)
  {
    supportsImplicitLogging = paramBoolean1;
    nuxContent = paramString;
    nuxEnabled = paramBoolean2;
    dialogConfigMap = paramMap;
    errorClassification = paramFacebookRequestErrorClassification;
  }
  
  public Map<String, Map<String, Utility.DialogFeatureConfig>> getDialogConfigurations()
  {
    return dialogConfigMap;
  }
  
  public FacebookRequestErrorClassification getErrorClassification()
  {
    return errorClassification;
  }
  
  public String getNuxContent()
  {
    return nuxContent;
  }
  
  public boolean getNuxEnabled()
  {
    return nuxEnabled;
  }
  
  public boolean supportsImplicitLogging()
  {
    return supportsImplicitLogging;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility.FetchedAppSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */