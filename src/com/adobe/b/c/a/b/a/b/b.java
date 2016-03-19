package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a;
import java.util.HashMap;

public final class b
{
  private com.adobe.b.a.b a;
  
  public b(com.adobe.b.a.b paramb)
  {
    a = paramb;
  }
  
  private boolean a(String paramString)
  {
    paramString = new a("Invalid input data", paramString);
    if (a != null) {
      a.call(paramString);
    }
    return false;
  }
  
  public final boolean a(HashMap<String, Object> paramHashMap, String[] paramArrayOfString)
  {
    if (paramHashMap == null) {
      return a("Data cannot be null");
    }
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramArrayOfString[i];
      a locala = a.valueOf(str);
      switch (1.a[locala.ordinal()])
      {
      default: 
        return a("Unable to validate unknown parameter: " + str);
      case 1: 
        if (!paramHashMap.containsKey("videoId")) {
          return a("The ID for the main video must be specified.");
        }
        if ((paramHashMap.get("videoId") == null) || (!(paramHashMap.get("videoId") instanceof String))) {
          return a("The ID for the main video must be a String.");
        }
        if (paramHashMap.get("videoId") == "") {
          return a("The ID for the main video cannot be an empty string.");
        }
        break;
      case 2: 
        if (!paramHashMap.containsKey("playerName")) {
          return a("The player name for the main video must be specified.");
        }
        if ((paramHashMap.get("playerName") == null) || (!(paramHashMap.get("playerName") instanceof String))) {
          return a("The player name for the main video must be a String.");
        }
        if (paramHashMap.get("playerName") == "") {
          return a("The player name for the main video cannot be an empty string.");
        }
        break;
      case 3: 
        if (!paramHashMap.containsKey("videoLength")) {
          return a("The length of the main video must be specified.");
        }
        if ((paramHashMap.get("videoLength") == null) || (!(paramHashMap.get("videoLength") instanceof Number))) {
          return a("The length of the main video must be a Number.");
        }
        break;
      case 4: 
        if (!paramHashMap.containsKey("streamType")) {
          return a("The stream type for the main video must be specified.");
        }
        if ((paramHashMap.get("streamType") == null) || (!(paramHashMap.get("streamType") instanceof String))) {
          return a("The stream type for the main video must be a String.");
        }
        if (paramHashMap.get("streamType") == "") {
          return a("The stream type for the main video cannot be an empty string.");
        }
        break;
      case 5: 
        if (!paramHashMap.containsKey("playhead")) {
          return a("The playhead for the main video must be specified.");
        }
        if ((paramHashMap.get("playhead") == null) || (!(paramHashMap.get("playhead") instanceof Double))) {
          return a("The playhead for the main video must be a Double.");
        }
        break;
      case 6: 
        if (!paramHashMap.containsKey("podPlayerName")) {
          return a("The player name for the ad-break must be specified.");
        }
        if ((paramHashMap.get("podPlayerName") == null) || (!(paramHashMap.get("podPlayerName") instanceof String))) {
          return a("The player name for the ad-break must be a String.");
        }
        if (paramHashMap.get("podPlayerName") == "") {
          return a("The player name for the ad-break cannot be an empty string.");
        }
        break;
      case 7: 
        if (!paramHashMap.containsKey("podPosition")) {
          return a("Position (index) of the ad-break must be specified.");
        }
        if ((paramHashMap.get("podPosition") == null) || (!(paramHashMap.get("podPosition") instanceof Number))) {
          return a("Position (index) of the ad-break must be a Number.");
        }
        break;
      case 8: 
        if (!paramHashMap.containsKey("adId")) {
          return a("The ad ID must be specified.");
        }
        if ((paramHashMap.get("adId") == null) || (!(paramHashMap.get("adId") instanceof String))) {
          return a("The ad ID must be a String.");
        }
        if (paramHashMap.get("adId") == "") {
          return a("The ad ID cannot be an empty string.");
        }
        break;
      case 9: 
        if (!paramHashMap.containsKey("adPosition")) {
          return a("Position (index) of the ad must be specified.");
        }
        if ((paramHashMap.get("adPosition") == null) || (!(paramHashMap.get("adPosition") instanceof Number))) {
          return a("Position (index) of the ad must be a Number.");
        }
        break;
      case 10: 
        if (!paramHashMap.containsKey("chapterPosition")) {
          return a("Position (index) of the chapter must be specified.");
        }
        if ((paramHashMap.get("chapterPosition") == null) || (!(paramHashMap.get("chapterPosition") instanceof Number))) {
          return a("Position (index) of the chapter must be a Number.");
        }
        break;
      case 11: 
        if (!paramHashMap.containsKey("chapterOffset")) {
          return a("Chapter start-time (offset) must be specified.");
        }
        if ((paramHashMap.get("chapterOffset") == null) || (!(paramHashMap.get("chapterOffset") instanceof Number))) {
          return a("Chapter start-time (offset) must be a Number.");
        }
        break;
      case 12: 
        if (!paramHashMap.containsKey("chapterLength")) {
          return a("The length of the chapter must be specified.");
        }
        if ((paramHashMap.get("chapterLength") == null) || (!(paramHashMap.get("chapterLength") instanceof Number))) {
          return a("The length of the chapter must be a Number.");
        }
        break;
      }
      i += 1;
    }
    return true;
  }
  
  private static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */