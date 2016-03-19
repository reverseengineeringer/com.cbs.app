package com.cbs.app.visualon.player;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import com.visualon.OSMPUtils.voLog;

public class PreferencesCCSettings
  extends PreferenceActivity
{
  public static String a(String paramString1, String paramString2, Activity paramActivity)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramActivity).getString(paramString1, paramString2);
  }
  
  public static boolean a(String paramString, Activity paramActivity)
  {
    boolean bool = PreferenceManager.getDefaultSharedPreferences(paramActivity).getBoolean(paramString, false);
    voLog.i("@@@  JavavomePreferencesCCSettings", paramString + " : " + bool, new Object[0]);
    return bool;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getPreferenceManager().createPreferenceScreen(this);
    setPreferenceScreen((PreferenceScreen)localObject);
    paramBundle = new PreferenceCategory(this);
    paramBundle.setTitle("Subtitle Settings");
    ((PreferenceScreen)localObject).addPreference(paramBundle);
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_size");
    ((CheckBoxPreference)localObject).setTitle("Change Font Size");
    ((CheckBoxPreference)localObject).setSummary("Set to enable font size");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new EditTextPreference(this);
    ((EditTextPreference)localObject).setDialogTitle("Set Font Size");
    ((EditTextPreference)localObject).setKey("cc_font_size_val");
    ((EditTextPreference)localObject).setTitle("Font Size");
    ((EditTextPreference)localObject).setSummary("Change font size, range is from 50 to 200");
    ((EditTextPreference)localObject).setDefaultValue("100");
    paramBundle.addPreference((Preference)localObject);
    ((EditTextPreference)localObject).setDependency("cc_font_size");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_color");
    ((CheckBoxPreference)localObject).setTitle("Enable Font Color");
    ((CheckBoxPreference)localObject).setSummary("Set to enable font color");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new EditTextPreference(this);
    ((EditTextPreference)localObject).setDialogTitle("Set Font Color Opacity");
    ((EditTextPreference)localObject).setKey("cc_font_color_opacity_val");
    ((EditTextPreference)localObject).setTitle("Font Color Opacity");
    ((EditTextPreference)localObject).setSummary("Change color opacity, range is from 50 (semi-transparent) to 100 (opaque)");
    ((EditTextPreference)localObject).setDefaultValue("100");
    paramBundle.addPreference((Preference)localObject);
    ((EditTextPreference)localObject).setDependency("cc_font_color");
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623948);
    ((ListPreference)localObject).setEntryValues(2131623949);
    ((ListPreference)localObject).setDialogTitle("Font Color List");
    ((ListPreference)localObject).setKey("cc_font_color_val");
    ((ListPreference)localObject).setTitle("Font Color List");
    ((ListPreference)localObject).setSummary("Change font color");
    ((ListPreference)localObject).setDefaultValue("white");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_font_color");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_background_color");
    ((CheckBoxPreference)localObject).setTitle("Enable Background Color");
    ((CheckBoxPreference)localObject).setSummary("Set to enable background color");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new EditTextPreference(this);
    ((EditTextPreference)localObject).setDialogTitle("Set Background Color Opacity");
    ((EditTextPreference)localObject).setKey("cc_background_color_opacity_val");
    ((EditTextPreference)localObject).setTitle("Background Color Opacity");
    ((EditTextPreference)localObject).setSummary("Change background color opacity, range is from 0 (transparent) to 100 (opaque)");
    ((EditTextPreference)localObject).setDefaultValue("100");
    paramBundle.addPreference((Preference)localObject);
    ((EditTextPreference)localObject).setDependency("cc_background_color");
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623948);
    ((ListPreference)localObject).setEntryValues(2131623949);
    ((ListPreference)localObject).setDialogTitle("Color List");
    ((ListPreference)localObject).setKey("cc_background_color_val");
    ((ListPreference)localObject).setTitle("Background Color List");
    ((ListPreference)localObject).setSummary("Change background color");
    ((ListPreference)localObject).setDefaultValue("black");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_background_color");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_edge_color");
    ((CheckBoxPreference)localObject).setTitle("Enable Edge Color");
    ((CheckBoxPreference)localObject).setSummary("Set to enable edge color");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new EditTextPreference(this);
    ((EditTextPreference)localObject).setDialogTitle("Set Edge Color Opacity");
    ((EditTextPreference)localObject).setKey("cc_edge_color_opacity_val");
    ((EditTextPreference)localObject).setTitle("Edge Color Opacity");
    ((EditTextPreference)localObject).setSummary("Change edge color opacity, range is from 0 (transparent) to 100 (opaque)");
    ((EditTextPreference)localObject).setDefaultValue("100");
    paramBundle.addPreference((Preference)localObject);
    ((EditTextPreference)localObject).setDependency("cc_edge_color");
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623948);
    ((ListPreference)localObject).setEntryValues(2131623949);
    ((ListPreference)localObject).setDialogTitle("Edge Color List");
    ((ListPreference)localObject).setKey("cc_edge_color_val");
    ((ListPreference)localObject).setTitle("Edge Color List");
    ((ListPreference)localObject).setSummary("Change edge color");
    ((ListPreference)localObject).setDefaultValue("green");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_edge_color");
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623952);
    ((ListPreference)localObject).setEntryValues(2131623953);
    ((ListPreference)localObject).setDialogTitle("Edge Type List");
    ((ListPreference)localObject).setKey("cc_edge_type_val");
    ((ListPreference)localObject).setTitle("Edge Type List");
    ((ListPreference)localObject).setSummary("Change edge type");
    ((ListPreference)localObject).setDefaultValue("1");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_edge_color");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_name");
    ((CheckBoxPreference)localObject).setTitle("Enable Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623954);
    ((ListPreference)localObject).setEntryValues(2131623954);
    ((ListPreference)localObject).setDialogTitle("Fonts list");
    ((ListPreference)localObject).setKey("cc_font_name_val");
    ((ListPreference)localObject).setTitle("Font List");
    ((ListPreference)localObject).setSummary("Change font");
    ((ListPreference)localObject).setDefaultValue("Arial");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_font_name");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_win_color");
    ((CheckBoxPreference)localObject).setTitle("Enable Window Background Color");
    ((CheckBoxPreference)localObject).setSummary("Set to enable window background color");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new EditTextPreference(this);
    ((EditTextPreference)localObject).setDialogTitle("Set Window Background Color Opacity");
    ((EditTextPreference)localObject).setKey("cc_win_color_opacity_val");
    ((EditTextPreference)localObject).setTitle("Window Background Color Opacity");
    ((EditTextPreference)localObject).setSummary("Change window background color opacity, range is from 0 (transparent) to 100 (opaque)");
    ((EditTextPreference)localObject).setDefaultValue("100");
    paramBundle.addPreference((Preference)localObject);
    ((EditTextPreference)localObject).setDependency("cc_win_color");
    localObject = new ListPreference(this);
    ((ListPreference)localObject).setEntries(2131623948);
    ((ListPreference)localObject).setEntryValues(2131623949);
    ((ListPreference)localObject).setDialogTitle("Color List");
    ((ListPreference)localObject).setKey("cc_win_color_val");
    ((ListPreference)localObject).setTitle("Window Background Color List");
    ((ListPreference)localObject).setSummary("Change background color");
    ((ListPreference)localObject).setDefaultValue("transparent");
    paramBundle.addPreference((Preference)localObject);
    ((ListPreference)localObject).setDependency("cc_win_color");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_enable_font_underline");
    ((CheckBoxPreference)localObject).setTitle("Enable Underline Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable underline font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_underline");
    ((CheckBoxPreference)localObject).setTitle("Set Underline Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable underline font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    ((CheckBoxPreference)localObject).setDependency("cc_enable_font_underline");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_enable_font_bold");
    ((CheckBoxPreference)localObject).setTitle("Enable Bold Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable bold font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_bold");
    ((CheckBoxPreference)localObject).setTitle("Set Bold Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable bold font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    ((CheckBoxPreference)localObject).setDependency("cc_enable_font_bold");
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_enable_font_italic");
    ((CheckBoxPreference)localObject).setTitle("Enable Italic Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable italic font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    localObject = new CheckBoxPreference(this);
    ((CheckBoxPreference)localObject).setKey("cc_font_italic");
    ((CheckBoxPreference)localObject).setTitle("Set Italic Font");
    ((CheckBoxPreference)localObject).setSummary("Set to enable italic font");
    ((CheckBoxPreference)localObject).setDefaultValue(Boolean.valueOf(false));
    paramBundle.addPreference((Preference)localObject);
    ((CheckBoxPreference)localObject).setDependency("cc_enable_font_italic");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PreferencesCCSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */