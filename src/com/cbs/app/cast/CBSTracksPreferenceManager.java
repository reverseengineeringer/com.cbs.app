package com.cbs.app.cast;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.accessibility.CaptioningManager;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;
import com.google.android.gms.cast.j;
import com.google.android.libraries.cast.companionlibrary.a.b;
import com.google.android.libraries.cast.companionlibrary.a.d;
import java.util.HashMap;
import java.util.Map;

public class CBSTracksPreferenceManager
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  private static final String a = b.a(CBSTracksPreferenceManager.class);
  private static final Map<String, String> e = new HashMap();
  private static final Map<String, Integer> f = new HashMap();
  private static final Map<String, Integer> g = new HashMap();
  private final Context b;
  private final SharedPreferences c;
  private final com.google.android.libraries.cast.companionlibrary.a.c d;
  private ListPreference h;
  private ListPreference i;
  private ListPreference j;
  private ListPreference k;
  private ListPreference l;
  private ListPreference m;
  private ListPreference n;
  private CheckBoxPreference o;
  private boolean p = false;
  
  static
  {
    e.put("FF", "100");
    e.put("BF", "75");
    e.put("80", "50");
    e.put("3F", "25");
    f.put("FONT_FAMILY_SANS_SERIF", Integer.valueOf(0));
    f.put("FONT_FAMILY_SERIF", Integer.valueOf(2));
    f.put("FONT_FAMILY_MONOSPACED_SANS_SERIF", Integer.valueOf(1));
    g.put("EDGE_TYPE_NONE", Integer.valueOf(0));
    g.put("EDGE_TYPE_OUTLINE", Integer.valueOf(1));
    g.put("EDGE_TYPE_DROP_SHADOW", Integer.valueOf(2));
  }
  
  public CBSTracksPreferenceManager(Context paramContext)
  {
    b = paramContext;
    c = PreferenceManager.getDefaultSharedPreferences(b);
    c.registerOnSharedPreferenceChangeListener(this);
    d = new com.google.android.libraries.cast.companionlibrary.a.c(paramContext);
  }
  
  private static int a(String paramString1, String paramString2)
  {
    paramString1 = paramString1.replace("#", "");
    return Color.parseColor("#" + paramString2 + paramString1);
  }
  
  private String a(SharedPreferences paramSharedPreferences, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = b.getResources();
    paramSharedPreferences = paramSharedPreferences.getString(((Resources)localObject).getString(paramInt1), ((Resources)localObject).getString(paramInt2));
    String[] arrayOfString = ((Resources)localObject).getStringArray(paramInt3);
    localObject = ((Resources)localObject).getStringArray(paramInt4);
    paramInt1 = 0;
    while (paramInt1 < localObject.length)
    {
      if (localObject[paramInt1].equals(paramSharedPreferences)) {
        return arrayOfString[paramInt1];
      }
      paramInt1 += 1;
    }
    return "";
  }
  
  private void a(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean)
  {
    if (!p) {}
    label538:
    for (;;)
    {
      return;
      if (b.getString(2131230914).equals(paramString))
      {
        paramSharedPreferences = o;
        if (o.isChecked()) {}
        for (int i1 = 2131230937;; i1 = 2131230933)
        {
          paramSharedPreferences.setSummary(i1);
          boolean bool = o.isChecked();
          h.setEnabled(bool);
          i.setEnabled(bool);
          j.setEnabled(bool);
          k.setEnabled(bool);
          l.setEnabled(bool);
          m.setEnabled(bool);
          n.setEnabled(bool);
          if (!paramBoolean) {
            break;
          }
          paramSharedPreferences = MainApplication.getVideoCastManager();
          if (paramSharedPreferences == null) {
            break;
          }
          paramSharedPreferences.d(o.isChecked());
          return;
        }
      }
      if (b.getString(2131230916).equals(paramString)) {
        h.setSummary(a(paramSharedPreferences, 2131230916, 2131230942, 2131623943, 2131623944));
      }
      for (;;)
      {
        if (!paramBoolean) {
          break label538;
        }
        paramSharedPreferences = MainApplication.getVideoCastManager();
        if (paramSharedPreferences == null) {
          break;
        }
        paramSharedPreferences.b(getTextTrackStyle());
        return;
        if (b.getString(2131230915).equals(paramString))
        {
          i.setSummary(a(paramSharedPreferences, 2131230915, 2131230940, 2131623941, 2131623942));
        }
        else if (b.getString(2131230917).equals(paramString))
        {
          j.setSummary(a(paramSharedPreferences, 2131230917, 2131230944, 2131623937, 2131623938));
        }
        else if (b.getString(2131230918).equals(paramString))
        {
          paramSharedPreferences = d.b(b.getString(2131230918), b.getString(2131230946));
          k.setSummary((String)e.get(paramSharedPreferences) + "%%");
        }
        else if (b.getString(2131230913).equals(paramString))
        {
          l.setSummary(a(paramSharedPreferences, 2131230913, 2131230936, 2131623939, 2131623940));
        }
        else if (b.getString(2131230911).equals(paramString))
        {
          m.setSummary(a(paramSharedPreferences, 2131230911, 2131230930, 2131623937, 2131623938));
        }
        else if (b.getString(2131230912).equals(paramString))
        {
          paramSharedPreferences = d.b(b.getString(2131230912), b.getString(2131230932));
          n.setSummary((String)e.get(paramSharedPreferences) + "%%");
        }
      }
    }
  }
  
  public final void a(Context paramContext, String paramString)
  {
    d.a(paramContext.getString(2131230911), paramString);
  }
  
  @SuppressLint({"NewApi"})
  public final boolean a()
  {
    if ((d.a) && (Util.H(b))) {
      return ((CaptioningManager)b.getSystemService("captioning")).isEnabled();
    }
    return d.c(b.getString(2131230914));
  }
  
  public String getBackgroundColor()
  {
    return d.b(b.getString(2131230911), b.getString(2131230930));
  }
  
  public String getBackgroundOpacity()
  {
    return d.b(b.getString(2131230912), b.getString(2131230932));
  }
  
  public String getEdgeType()
  {
    return d.b(b.getString(2131230913), "EDGE_TYPE_NONE");
  }
  
  public String getFontFamily()
  {
    return d.b(b.getString(2131230915), "FONT_FAMILY_SANS_SERIF");
  }
  
  public float getFontScale()
  {
    return Float.parseFloat(d.b(b.getString(2131230916), "1.0"));
  }
  
  public String getTextColor()
  {
    return d.b(b.getString(2131230917), b.getString(2131230944));
  }
  
  public String getTextOpacity()
  {
    return d.b(b.getString(2131230918), b.getString(2131230946));
  }
  
  public j getTextTrackStyle()
  {
    j localj1 = new j();
    j localj2;
    if (Util.H(b))
    {
      localj1 = j.a(b);
      localj2 = localj1;
      if (d.a) {}
    }
    else
    {
      setFromPrefs(localj1);
      localj2 = localj1;
    }
    return localj2;
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    a(paramSharedPreferences, paramString, true);
  }
  
  public void setBackgroundOpacity(String paramString)
  {
    d.a(b.getString(2131230912), paramString);
  }
  
  public void setEdgeType(String paramString)
  {
    d.a(b.getString(2131230913), paramString);
  }
  
  public void setFontFamily(String paramString)
  {
    d.a(b.getString(2131230915), paramString);
  }
  
  public void setFontScale(String paramString)
  {
    d.a(b.getString(2131230916), paramString);
  }
  
  public void setFromPrefs(j paramj)
  {
    paramj.d(((Integer)f.get(getFontFamily())).intValue());
    paramj.b(Color.parseColor(getBackgroundColor()));
    paramj.c(((Integer)g.get(getEdgeType())).intValue());
    paramj.a(getFontScale());
    boolean bool1 = Typeface.DEFAULT.isBold();
    boolean bool2 = Typeface.DEFAULT.isItalic();
    int i1;
    if ((bool1) && (bool2)) {
      i1 = 3;
    }
    for (;;)
    {
      paramj.e(i1);
      paramj.a(a(getTextColor(), getTextOpacity()));
      new StringBuilder("Edge is: ").append(getEdgeType());
      paramj.b(a(getBackgroundColor(), getBackgroundOpacity()));
      return;
      if ((!bool1) && (!bool2)) {
        i1 = 0;
      } else if (bool1) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
  }
  
  public void setTextColor(String paramString)
  {
    d.a(b.getString(2131230917), paramString);
  }
  
  public void setTextOpacity(String paramString)
  {
    d.a(b.getString(2131230918), paramString);
  }
  
  public void setUpPreferences(PreferenceScreen paramPreferenceScreen)
  {
    o = ((CheckBoxPreference)paramPreferenceScreen.findPreference(b.getString(2131230914)));
    h = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230916)));
    i = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230915)));
    j = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230917)));
    k = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230918)));
    l = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230913)));
    m = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230911)));
    n = ((ListPreference)paramPreferenceScreen.findPreference(b.getString(2131230912)));
    p = true;
    a(c, b.getString(2131230914), false);
    a(c, b.getString(2131230915), false);
    a(c, b.getString(2131230916), false);
    a(c, b.getString(2131230917), false);
    a(c, b.getString(2131230918), false);
    a(c, b.getString(2131230913), false);
    a(c, b.getString(2131230911), false);
    a(c, b.getString(2131230912), false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSTracksPreferenceManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */