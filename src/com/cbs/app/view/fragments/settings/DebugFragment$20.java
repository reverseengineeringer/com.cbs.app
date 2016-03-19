package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.DataManagerConfiguration;
import com.cbs.app.view.NavigationActivity;

final class DebugFragment$20
  implements View.OnClickListener
{
  DebugFragment$20(DebugFragment paramDebugFragment, EditText paramEditText1, EditText paramEditText2, EditText paramEditText3, EditText paramEditText4, CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3, CheckBox paramCheckBox4, CheckBox paramCheckBox5, CheckBox paramCheckBox6, CheckBox paramCheckBox7, EditText paramEditText5, Spinner paramSpinner, ArrayAdapter paramArrayAdapter) {}
  
  public final void onClick(View paramView)
  {
    paramView = a.getText();
    if (paramView != null) {}
    for (String str1 = paramView.toString();; str1 = null)
    {
      paramView = b.getText();
      if (paramView != null) {}
      for (String str2 = paramView.toString();; str2 = null)
      {
        Object localObject1 = c.getText();
        paramView = null;
        if (localObject1 != null) {
          paramView = localObject1.toString();
        }
        if ((paramView != null) && (paramView.equals("default"))) {
          paramView = "CC1AD845";
        }
        for (;;)
        {
          Object localObject2 = d.getText();
          localObject1 = null;
          if (localObject2 != null) {
            localObject1 = localObject2.toString();
          }
          int i1 = Integer.parseInt((String)localObject1);
          if (e != null) {}
          for (boolean bool1 = e.isChecked();; bool1 = true)
          {
            if (f != null) {}
            for (boolean bool2 = f.isChecked();; bool2 = true)
            {
              boolean bool5 = g.isChecked();
              boolean bool6 = h.isChecked();
              if (i != null) {}
              for (boolean bool3 = i.isChecked();; bool3 = true)
              {
                if (j != null) {}
                for (boolean bool4 = j.isChecked();; bool4 = false)
                {
                  boolean bool7 = k.isChecked();
                  localObject1 = l.getText().toString();
                  localObject2 = PreferenceManager.getDefaultSharedPreferences(o.a).edit();
                  int i2 = m.getSelectedItemPosition();
                  ((SharedPreferences.Editor)localObject2).putString("ab_type", ((CharSequence)n.getItem(i2)).toString());
                  ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", str1);
                  ((SharedPreferences.Editor)localObject2).putString("chromecast_id", paramView);
                  ((SharedPreferences.Editor)localObject2).putBoolean("use_debug_mdialog", bool5);
                  ((SharedPreferences.Editor)localObject2).putBoolean("use_debug_conviva", bool6);
                  ((SharedPreferences.Editor)localObject2).putBoolean("allow_https", bool2);
                  ((SharedPreferences.Editor)localObject2).putBoolean("use_cc_vod_override", bool7);
                  ((SharedPreferences.Editor)localObject2).putString("cc_vod_override", (String)localObject1);
                  if ((str2 != null) && (!str2.equals(""))) {
                    ((SharedPreferences.Editor)localObject2).putString("cbs_base_uri", str2);
                  }
                  ((SharedPreferences.Editor)localObject2).putBoolean("show_events", bool3);
                  ((SharedPreferences.Editor)localObject2).putBoolean("useResponseCache", bool1);
                  ((SharedPreferences.Editor)localObject2).putBoolean("unicornUAT", bool4);
                  ((SharedPreferences.Editor)localObject2).putInt("maxBufferTime", i1);
                  ((SharedPreferences.Editor)localObject2).commit();
                  Toast.makeText(o.a, "Saved", 0).show();
                  if ((o.a != null) && ((o.a instanceof NavigationActivity))) {
                    ((NavigationActivity)o.a).h();
                  }
                  paramView = DataManager.getInstance().getConfiguration();
                  paramView.setCbsHost(str2);
                  paramView.setCbsAppSecret(str1);
                  paramView.setUseHttps(bool2);
                  paramView.setUseResponseCache(bool1);
                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */