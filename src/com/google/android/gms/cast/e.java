package com.google.android.gms.cast;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.ip;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
{
  private static final String[] a = { null, "String", "int", "double", "ISO-8601 date String" };
  private static final e.a b = new e.a().a("com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime", 4).a("com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate", 4).a("com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate", 4).a("com.google.android.gms.cast.metadata.TITLE", "title", 1).a("com.google.android.gms.cast.metadata.SUBTITLE", "subtitle", 1).a("com.google.android.gms.cast.metadata.ARTIST", "artist", 1).a("com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist", 1).a("com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName", 1).a("com.google.android.gms.cast.metadata.COMPOSER", "composer", 1).a("com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber", 2).a("com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber", 2).a("com.google.android.gms.cast.metadata.SEASON_NUMBER", "season", 2).a("com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode", 2).a("com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle", 1).a("com.google.android.gms.cast.metadata.STUDIO", "studio", 1).a("com.google.android.gms.cast.metadata.WIDTH", "width", 2).a("com.google.android.gms.cast.metadata.HEIGHT", "height", 2).a("com.google.android.gms.cast.metadata.LOCATION_NAME", "location", 1).a("com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude", 3).a("com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude", 3);
  private final List<WebImage> c = new ArrayList();
  private final Bundle d = new Bundle();
  private int e;
  
  public e()
  {
    this(0);
  }
  
  public e(int paramInt)
  {
    e = paramInt;
  }
  
  private void a(JSONObject paramJSONObject, String... paramVarArgs)
  {
    try
    {
      int j = paramVarArgs.length;
      int i = 0;
      for (;;)
      {
        String str;
        if (i < j)
        {
          str = paramVarArgs[i];
          if (!d.containsKey(str)) {}
        }
        else
        {
          switch (b.c(str))
          {
          case 1: 
          case 4: 
            paramJSONObject.put(b.a(str), d.getString(str));
            break;
          case 2: 
            paramJSONObject.put(b.a(str), d.getInt(str));
            break;
          case 3: 
            paramJSONObject.put(b.a(str), d.getDouble(str));
            break;
            paramVarArgs = d.keySet().iterator();
            while (paramVarArgs.hasNext())
            {
              str = (String)paramVarArgs.next();
              if (!str.startsWith("com.google."))
              {
                Object localObject = d.get(str);
                if ((localObject instanceof String)) {
                  paramJSONObject.put(str, localObject);
                } else if ((localObject instanceof Integer)) {
                  paramJSONObject.put(str, localObject);
                } else if ((localObject instanceof Double)) {
                  paramJSONObject.put(str, localObject);
                }
              }
            }
          }
        }
        i += 1;
      }
      return;
    }
    catch (JSONException paramJSONObject) {}
  }
  
  private boolean a(Bundle paramBundle1, Bundle paramBundle2)
  {
    if (paramBundle1.size() != paramBundle2.size()) {
      return false;
    }
    Iterator localIterator = paramBundle1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject1 = paramBundle1.get(str);
      Object localObject2 = paramBundle2.get(str);
      if (((localObject1 instanceof Bundle)) && ((localObject2 instanceof Bundle)) && (!a((Bundle)localObject1, (Bundle)localObject2))) {
        return false;
      }
      if (localObject1 == null)
      {
        if ((localObject2 != null) || (!paramBundle2.containsKey(str))) {
          return false;
        }
      }
      else if (!localObject1.equals(localObject2)) {
        return false;
      }
    }
    return true;
  }
  
  private static void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("null and empty keys are not allowed");
    }
    int i = b.c(paramString);
    if ((i != 1) && (i != 0)) {
      throw new IllegalArgumentException("Value for " + paramString + " must be a " + a[1]);
    }
  }
  
  private void b(JSONObject paramJSONObject, String... paramVarArgs)
  {
    paramVarArgs = new HashSet(Arrays.asList(paramVarArgs));
    try
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        Object localObject1 = (String)localIterator.next();
        if (!"metadataType".equals(localObject1))
        {
          Object localObject2 = b.b((String)localObject1);
          if (localObject2 != null)
          {
            boolean bool = paramVarArgs.contains(localObject2);
            if (!bool) {}
          }
          else
          {
            try
            {
              localObject1 = paramJSONObject.get((String)localObject1);
              if (localObject1 != null) {
                switch (b.c((String)localObject2))
                {
                case 1: 
                  if ((localObject1 instanceof String)) {
                    d.putString((String)localObject2, (String)localObject1);
                  }
                  break;
                case 4: 
                  if (((localObject1 instanceof String)) && (ip.a((String)localObject1) != null)) {
                    d.putString((String)localObject2, (String)localObject1);
                  }
                  break;
                case 2: 
                  if ((localObject1 instanceof Integer)) {
                    d.putInt((String)localObject2, ((Integer)localObject1).intValue());
                  }
                  break;
                case 3: 
                  if ((localObject1 instanceof Double))
                  {
                    d.putDouble((String)localObject2, ((Double)localObject1).doubleValue());
                    continue;
                    localObject2 = paramJSONObject.get((String)localObject1);
                    if ((localObject2 instanceof String)) {
                      d.putString((String)localObject1, (String)localObject2);
                    } else if ((localObject2 instanceof Integer)) {
                      d.putInt((String)localObject1, ((Integer)localObject2).intValue());
                    } else if ((localObject2 instanceof Double)) {
                      d.putDouble((String)localObject1, ((Double)localObject2).doubleValue());
                    }
                  }
                  break;
                }
              }
            }
            catch (JSONException localJSONException) {}
          }
        }
      }
      return;
    }
    catch (JSONException paramJSONObject) {}
  }
  
  public final String a(String paramString)
  {
    b(paramString);
    return d.getString(paramString);
  }
  
  public final JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("metadataType", e);
      ip.a(localJSONObject, c);
      switch (e)
      {
      default: 
        a(localJSONObject, new String[0]);
        return localJSONObject;
      case 0: 
        a(localJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return localJSONObject;
      case 1: 
        a(localJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return localJSONObject;
      case 2: 
        a(localJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE" });
        return localJSONObject;
      case 3: 
        a(localJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return localJSONObject;
      }
      a(localJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE" });
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  public final void a(WebImage paramWebImage)
  {
    c.add(paramWebImage);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    b(paramString1);
    d.putString(paramString1, paramString2);
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    d.clear();
    c.clear();
    e = 0;
    try
    {
      e = paramJSONObject.getInt("metadataType");
      ip.a(c, paramJSONObject);
      switch (e)
      {
      default: 
        b(paramJSONObject, new String[0]);
        return;
      case 0: 
        b(paramJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return;
      case 1: 
        b(paramJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return;
      case 2: 
        b(paramJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE" });
        return;
      case 3: 
        b(paramJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE" });
        return;
      }
      b(paramJSONObject, new String[] { "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE" });
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  public final List<WebImage> b()
  {
    return c;
  }
  
  public final boolean c()
  {
    return (c != null) && (!c.isEmpty());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof e)) {
        return false;
      }
      paramObject = (e)paramObject;
    } while ((a(d, d)) && (c.equals(c)));
    return false;
  }
  
  public final int hashCode()
  {
    Iterator localIterator = d.keySet().iterator();
    String str;
    for (int i = 17; localIterator.hasNext(); i = d.get(str).hashCode() + i * 31) {
      str = (String)localIterator.next();
    }
    return i * 31 + c.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */