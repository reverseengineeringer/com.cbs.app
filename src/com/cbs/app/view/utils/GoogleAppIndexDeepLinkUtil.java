package com.cbs.app.view.utils;

import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;

public abstract class GoogleAppIndexDeepLinkUtil
{
  private static final String a = GoogleAppIndexDeepLinkUtil.class.getSimpleName();
  
  public static String a(Show paramShow, VideoData paramVideoData, String paramString)
  {
    Object localObject = null;
    if (paramShow != null)
    {
      paramVideoData = paramShow.getLink();
      if (paramString != null)
      {
        if (paramString.equalsIgnoreCase("photos")) {
          paramShow = "android-app://com.cbs.app/cbs/" + paramVideoData + "photos" + "?campaign=ftag:ADLbe6cacd&fg=1";
        }
        do
        {
          return paramShow;
          paramShow = (Show)localObject;
        } while (!paramString.equalsIgnoreCase("cast"));
        return "android-app://com.cbs.app/cbs/" + paramVideoData + "cast" + "?campaign=ftag:ADLbe6cacd&fg=1";
      }
      return "android-app://com.cbs.app/cbs/" + paramVideoData + "?campaign=ftag:ADLbe6cacd&fg=1";
    }
    if ((paramVideoData != null) && (paramString.equalsIgnoreCase("Videos")))
    {
      paramShow = "android-app://com.cbs.app/cbs/" + paramVideoData.getUrl() + "?campaign=ftag:ADLbe6cacd&fg=1";
      new StringBuilder("videoData.getUrl() : ").append(paramVideoData.getUrl());
      return paramShow;
    }
    return "android-app://com.cbs.app/cbs/http://www.cbs.com/";
  }
  
  public static String b(Show paramShow, VideoData paramVideoData, String paramString)
  {
    Object localObject = null;
    if (paramShow != null)
    {
      String str = paramShow.getLink();
      if (paramString != null)
      {
        if (paramString.equalsIgnoreCase("photos")) {
          paramShow = str + "photos/";
        }
        do
        {
          return paramShow;
          if (paramString.equalsIgnoreCase("video")) {
            return paramVideoData.getUrl();
          }
          paramShow = (Show)localObject;
        } while (!paramString.equalsIgnoreCase("cast"));
        return str + "cast/";
      }
      return str;
    }
    return "http://www.cbs.com/";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */