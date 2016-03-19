package com.cbs.app.view.fragments.settings;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.cbs.app.adobepass.MvpdLoginActivity;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.adobepass.MvpdPickerActivity;
import com.cbs.app.analytics.impl.KochavaService;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.DataManagerConfiguration;
import com.cbs.app.androiddata.MemoryCache;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.service.SVODService;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.utils.CapUtil;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.PlayerActivityV2;
import com.kochava.android.tracker.b;
import com.urbanairship.p;
import com.urbanairship.push.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DebugFragment
  extends Fragment
{
  private static final String b = DebugFragment.class.getSimpleName();
  Activity a;
  private boolean c = false;
  private boolean d = false;
  private String e = null;
  private Dialog f = null;
  private long g = 0L;
  private int h = 0;
  private ShowServiceManager i;
  private EditText j;
  private EditText k;
  private MVPDCallbacks l = new MVPDCallbacks()
  {
    public final boolean a()
    {
      return true;
    }
    
    public final boolean a(String paramAnonymousString)
    {
      Intent localIntent = new Intent(getActivity(), MvpdLoginActivity.class);
      localIntent.putExtra("url", paramAnonymousString);
      getParentFragment().startActivityForResult(localIntent, 9001);
      return true;
    }
    
    public final boolean a(ArrayList<MVPDConfig> paramAnonymousArrayList, boolean paramAnonymousBoolean)
    {
      Intent localIntent = new Intent(getActivity(), MvpdPickerActivity.class);
      localIntent.putExtra("mvpd_data", paramAnonymousArrayList);
      getParentFragment().startActivityForResult(localIntent, 9003);
      return true;
    }
    
    public final boolean a(final boolean paramAnonymousBoolean)
    {
      getActivity().runOnUiThread(new Runnable()
      {
        public final void run()
        {
          DebugFragment.a(paramAnonymousBoolean, getView());
        }
      });
      return true;
    }
    
    public final boolean b(String paramAnonymousString)
    {
      Intent localIntent = new Intent(getActivity(), MvpdLogoutActivity.class);
      localIntent.putExtra("url", paramAnonymousString);
      getParentFragment().startActivityForResult(localIntent, 9002);
      return true;
    }
    
    public final boolean b(boolean paramAnonymousBoolean)
    {
      return true;
    }
  };
  
  private static int a(String[] paramArrayOfString, String paramString)
  {
    int m = 0;
    while (m < paramArrayOfString.length)
    {
      if (paramArrayOfString[m].equalsIgnoreCase(paramString)) {
        return m;
      }
      m += 1;
    }
    return 0;
  }
  
  public static void a()
  {
    new StringBuilder("test:");
    throw new NullPointerException();
  }
  
  public static void a(boolean paramBoolean, View paramView)
  {
    if (paramView != null)
    {
      paramView = (Button)paramView.findViewById(2131690260);
      if (paramBoolean) {
        paramView.setText("MVPD Logout");
      }
    }
    else
    {
      return;
    }
    paramView.setText("MVPD Login");
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder("onActivityResult: requestCode = ").append(paramInt1).append(", resultCode = ").append(paramInt2);
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    case 9001: 
      switch (paramInt2)
      {
      default: 
        return;
      case -1: 
        MVPDController.getInstance().getAuthenticationToken();
        return;
      }
      MVPDController.getInstance().setMVPDProviderToModifyAuth(null);
      return;
    case 9002: 
      switch (paramInt2)
      {
      case 0: 
      default: 
        return;
      }
      MVPDController.getInstance().f();
      return;
    }
    switch (paramInt2)
    {
    default: 
      return;
    case -1: 
      MVPDController.getInstance().setMVPDProviderToModifyAuth((MVPDConfig)paramIntent.getParcelableExtra("mvpd"));
      return;
    }
    MVPDController.getInstance().setMVPDProviderToModifyAuth(null);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = paramActivity;
    if (getView() != null)
    {
      paramActivity = PreferenceManager.getDefaultSharedPreferences(a);
      ((CheckBox)getView().findViewById(2131690267)).setChecked(paramActivity.getBoolean("webcheckbox", false));
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903258, paramViewGroup, false);
    final Object localObject9;
    final Object localObject12;
    final EditText localEditText1;
    final EditText localEditText2;
    final Object localObject1;
    final Object localObject2;
    final Object localObject3;
    final CheckBox localCheckBox1;
    final CheckBox localCheckBox2;
    final CheckBox localCheckBox3;
    final EditText localEditText3;
    final Object localObject4;
    SeekBar localSeekBar;
    final Object localObject6;
    final Object localObject10;
    final Object localObject11;
    final Object localObject5;
    final Object localObject7;
    final EditText localEditText4;
    final Object localObject8;
    final int m;
    float f1;
    int n;
    if (paramLayoutInflater != null)
    {
      localObject9 = (Button)paramLayoutInflater.findViewById(2131690219);
      localObject12 = (Button)paramLayoutInflater.findViewById(2131690220);
      Object localObject13 = (Button)paramLayoutInflater.findViewById(2131690221);
      Button localButton = (Button)paramLayoutInflater.findViewById(2131690222);
      paramViewGroup = (CheckBox)paramLayoutInflater.findViewById(2131690251);
      paramBundle = (CheckBox)paramLayoutInflater.findViewById(2131690250);
      localEditText1 = (EditText)paramLayoutInflater.findViewById(2131690234);
      localEditText2 = (EditText)paramLayoutInflater.findViewById(2131690236);
      localObject1 = (EditText)paramLayoutInflater.findViewById(2131690255);
      localObject2 = (TextView)paramLayoutInflater.findViewById(2131690243);
      localObject3 = (CheckBox)paramLayoutInflater.findViewById(2131690239);
      localCheckBox1 = (CheckBox)paramLayoutInflater.findViewById(2131690253);
      localCheckBox2 = (CheckBox)paramLayoutInflater.findViewById(2131690240);
      localCheckBox3 = (CheckBox)paramLayoutInflater.findViewById(2131690244);
      localEditText3 = (EditText)paramLayoutInflater.findViewById(2131690241);
      localObject4 = (SeekBar)paramLayoutInflater.findViewById(2131689678);
      localSeekBar = (SeekBar)paramLayoutInflater.findViewById(2131690242);
      localObject6 = (RadioButton)paramLayoutInflater.findViewById(2131690247);
      localObject10 = (RadioButton)paramLayoutInflater.findViewById(2131690248);
      localObject11 = (RadioButton)paramLayoutInflater.findViewById(2131690249);
      final Object localObject14 = (CheckBox)paramLayoutInflater.findViewById(2131690265);
      final CheckBox localCheckBox4 = (CheckBox)paramLayoutInflater.findViewById(2131690266);
      localObject5 = (Button)paramLayoutInflater.findViewById(2131690260);
      MVPDController.getInstance().setMVPDCallbacks(l);
      MVPDController.getInstance().h();
      ((Button)localObject5).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          DebugFragment.b();
          if (localObject5.getText().equals("MVPD Logout")) {
            MVPDController.getInstance().e();
          }
          while (!localObject5.getText().equals("MVPD Login")) {
            return;
          }
          MVPDController.getInstance().getAuthentication();
        }
      });
      TextView localTextView = (TextView)paramLayoutInflater.findViewById(2131690245);
      bool = Preferences.a(a, "use_cc_vod_override", false);
      localObject7 = Preferences.b(getActivity(), "cc_vod_override", "ktvq5uy60wOw7GO6OoOYk2Cdd2YpS_EH");
      localObject5 = (CheckBox)paramLayoutInflater.findViewById(2131690257);
      localEditText4 = (EditText)paramLayoutInflater.findViewById(2131690258);
      ((CheckBox)localObject5).setChecked(bool);
      localEditText4.setText((CharSequence)localObject7);
      localObject7 = PreferenceManager.getDefaultSharedPreferences(getActivity());
      localObject8 = ((SharedPreferences)localObject7).edit();
      ((CheckBox)localObject14).setChecked(((SharedPreferences)localObject7).getBoolean("flurryCheckBox", false));
      ((CheckBox)localObject14).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            localObject8.putBoolean("flurryCheckBox", localObject14.isChecked());
            return;
          }
          localObject8.putBoolean("flurryCheckBox", false);
        }
      });
      localCheckBox4.setChecked(((SharedPreferences)localObject7).getBoolean("kochavaCheckBox", false));
      localCheckBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            localObject8.putBoolean("kochavaCheckBox", localCheckBox4.isChecked());
            return;
          }
          localObject8.putBoolean("kochavaCheckBox", false);
        }
      });
      localObject14 = p.a().m().t();
      ((Button)localObject9).setText((CharSequence)localObject14);
      ((Button)localObject9).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent("android.intent.action.SEND");
          paramAnonymousView.setType("text/plain");
          paramAnonymousView.putExtra("android.intent.extra.SUBJECT", "Channel Id");
          paramAnonymousView.putExtra("android.intent.extra.TEXT", localObject14);
          startActivity(Intent.createChooser(paramAnonymousView, "Share Push Channel Id"));
        }
      });
      ((Button)localObject13).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = b.a();
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.setType("text/plain");
          localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
          localIntent.putExtra("android.intent.extra.TEXT", paramAnonymousView);
          startActivity(Intent.createChooser(localIntent, "Share Attribution Data"));
        }
      });
      ((Button)localObject12).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = KochavaService.getAttributionData();
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.setType("text/plain");
          localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
          localIntent.putExtra("android.intent.extra.TEXT", paramAnonymousView);
          startActivity(Intent.createChooser(localIntent, "Share Kochava Device Id"));
        }
      });
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = Settings.Secure.getString(getActivity().getContentResolver(), "android_id");
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.setType("text/plain");
          localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
          localIntent.putExtra("android.intent.extra.TEXT", paramAnonymousView);
          startActivity(Intent.createChooser(localIntent, "Share androidId"));
        }
      });
      m = CapUtil.a();
      f1 = CapUtil.a(a);
      ((TextView)localObject2).setText(Integer.valueOf(Math.round(m * f1)).toString());
      localObject9 = (MainApplication)a.getApplicationContext();
      localTextView.setText(Util.I(a));
      if ((Util.x(a) == null) || (!Util.x(a).equals("com.amazon.venezia"))) {
        break label1949;
      }
      ((RadioButton)localObject10).setChecked(true);
      if ((localObject10 != null) && (localObject6 != null))
      {
        ((RadioButton)localObject10).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            DebugFragment.b();
            Util.e(getActivity(), "com.amazon.venezia");
            localEditText1.setText("9a06af4666595a16");
          }
        });
        ((RadioButton)localObject6).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            DebugFragment.b();
            Util.e(getActivity(), "com.android.vending");
            localObject9.e();
            localEditText1.setText("b700a363a73b9ada");
          }
        });
        ((RadioButton)localObject11).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            DebugFragment.b();
            Util.e(getActivity(), null);
            if (Util.I(getActivity()).equalsIgnoreCase("com.amazon.venezia"))
            {
              localEditText1.setText("9a06af4666595a16");
              return;
            }
            localEditText1.setText("b700a363a73b9ada");
          }
        });
      }
      localObject11 = a.getResources().getStringArray(2131623958);
      localObject12 = a.getResources().getStringArray(2131623959);
      localObject10 = (Button)paramLayoutInflater.findViewById(2131690229);
      j = ((EditText)paramLayoutInflater.findViewById(2131690227));
      k = ((EditText)paramLayoutInflater.findViewById(2131690228));
      localObject13 = (Spinner)paramLayoutInflater.findViewById(2131690226);
      localObject6 = ArrayAdapter.createFromResource(a, 2131623957, 17367048);
      ((ArrayAdapter)localObject6).setDropDownViewResource(17367049);
      ((Spinner)localObject13).setAdapter((SpinnerAdapter)localObject6);
      localObject6 = PreferenceManager.getDefaultSharedPreferences(a);
      n = ((SharedPreferences)localObject6).getInt("PREFS_DEBUG_LOCATION_NAME_POSITION", 0);
      ((Spinner)localObject13).setSelection(n);
      ((Spinner)localObject13).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          boolean bool2 = true;
          paramAnonymousView = localObject11[paramAnonymousInt];
          paramAnonymousAdapterView = localObject12[paramAnonymousInt];
          if (paramAnonymousInt == 1)
          {
            paramAnonymousView = localObject6.getString("PREFS_DEBUG_LOCATION_CUSTOM_LATITUDE", "");
            paramAnonymousAdapterView = localObject6.getString("PREFS_DEBUG_LOCATION_CUSTOM_LONGITUDE", "");
          }
          DebugFragment.a(DebugFragment.this, paramAnonymousInt, paramAnonymousView, paramAnonymousAdapterView, false);
          paramAnonymousAdapterView = DebugFragment.a(DebugFragment.this);
          if (paramAnonymousInt == 1)
          {
            bool1 = true;
            paramAnonymousAdapterView.setEnabled(bool1);
            paramAnonymousAdapterView = DebugFragment.b(DebugFragment.this);
            if (paramAnonymousInt != 1) {
              break label132;
            }
            bool1 = true;
            label99:
            paramAnonymousAdapterView.setEnabled(bool1);
            paramAnonymousAdapterView = localObject10;
            if (paramAnonymousInt != 1) {
              break label138;
            }
          }
          label132:
          label138:
          for (boolean bool1 = bool2;; bool1 = false)
          {
            paramAnonymousAdapterView.setEnabled(bool1);
            return;
            bool1 = false;
            break;
            bool1 = false;
            break label99;
          }
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      localObject11 = j;
      if (n != 1) {
        break label1993;
      }
      bool = true;
      label883:
      ((EditText)localObject11).setEnabled(bool);
      localObject11 = k;
      if (n != 1) {
        break label1999;
      }
      bool = true;
      label905:
      ((EditText)localObject11).setEnabled(bool);
      if (n != 1) {
        break label2005;
      }
    }
    label1949:
    label1993:
    label1999:
    label2005:
    for (boolean bool = true;; bool = false)
    {
      ((Button)localObject10).setEnabled(bool);
      j.addTextChangedListener(new TextWatcher()
      {
        float a;
        
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          if ((paramAnonymousCharSequence != null) && (paramAnonymousCharSequence.length() > 2))
          {
            a = Float.valueOf(paramAnonymousCharSequence.toString()).floatValue();
            if ((a > 90.0F) || (a < -90.0F))
            {
              DebugFragment.a(DebugFragment.this).setText("");
              Toast.makeText(a, "Latitude vaule must be between:\n-90.00 and +90.00", 1).show();
            }
          }
        }
      });
      k.addTextChangedListener(new TextWatcher()
      {
        float a;
        
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          if ((paramAnonymousCharSequence != null) && (paramAnonymousCharSequence.length() > 2))
          {
            a = Float.valueOf(paramAnonymousCharSequence.toString()).floatValue();
            if ((a > 180.0F) || (a < -180.0F))
            {
              DebugFragment.b(DebugFragment.this).setText("");
              Toast.makeText(a, "Longitude vaule must be between:\n-180.00 and +180.00", 1).show();
            }
          }
        }
      });
      ((Button)localObject10).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          DebugFragment.a(DebugFragment.this, 1, DebugFragment.a(DebugFragment.this).getText().toString(), DebugFragment.b(DebugFragment.this).getText().toString(), true);
        }
      });
      localObject10 = (Spinner)paramLayoutInflater.findViewById(2131690230);
      localObject11 = a.getResources().getStringArray(2131623956);
      localObject12 = ArrayAdapter.createFromResource(a, 2131623956, 17367048);
      ((ArrayAdapter)localObject12).setDropDownViewResource(17367049);
      ((Spinner)localObject10).setAdapter((SpinnerAdapter)localObject12);
      ((Spinner)localObject10).setSelection(a((String[])localObject11, ((SharedPreferences)localObject7).getString("syncbackurl", "http://cbsservice.aws.syncbak.com")));
      ((Spinner)localObject10).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          localObject8.putString("syncbackurl", localObject11[paramAnonymousInt]);
          localObject8.apply();
          DataManager.getInstance().getConfiguration().setSyncbakHost(localObject11[paramAnonymousInt]);
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      localObject7 = (Spinner)paramLayoutInflater.findViewById(2131690232);
      localObject8 = ArrayAdapter.createFromResource(a, 2131623936, 17367048);
      ((ArrayAdapter)localObject8).setDropDownViewResource(17367049);
      ((Spinner)localObject7).setAdapter((SpinnerAdapter)localObject8);
      if (Util.o(a)) {
        ((Spinner)localObject7).setSelection(2);
      }
      localObject10 = (Spinner)paramLayoutInflater.findViewById(2131690237);
      localObject11 = ArrayAdapter.createFromResource(getActivity(), 2131623961, 17367048);
      ((ArrayAdapter)localObject11).setDropDownViewResource(17367049);
      ((Spinner)localObject10).setAdapter((SpinnerAdapter)localObject11);
      ((Spinner)localObject10).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = ((CharSequence)localObject11.getItem(paramAnonymousInt)).toString();
          if ((paramAnonymousAdapterView != null) && (!paramAnonymousAdapterView.equals(""))) {
            localEditText2.setText(paramAnonymousAdapterView);
          }
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      localObject10 = (Spinner)paramLayoutInflater.findViewById(2131690256);
      localObject11 = ArrayAdapter.createFromResource(getActivity(), 2131623947, 17367048);
      ((ArrayAdapter)localObject11).setDropDownViewResource(17367049);
      ((Spinner)localObject10).setAdapter((SpinnerAdapter)localObject11);
      ((Spinner)localObject10).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = ((CharSequence)localObject11.getItem(paramAnonymousInt)).toString();
          if ((paramAnonymousAdapterView != null) && (!paramAnonymousAdapterView.equals(""))) {
            localObject1.setText(paramAnonymousAdapterView);
          }
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      ((SeekBar)localObject4).setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
      {
        public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
        {
          DebugFragment.b();
          if (!DebugFragment.c(DebugFragment.this))
          {
            DebugFragment.b();
            DebugFragment.a(DebugFragment.this, true);
            paramAnonymousInt = (int)Math.round(paramAnonymousInt / 100.0D * 110.0D);
            paramAnonymousSeekBar = localEditText3.getEditableText();
            if (paramAnonymousSeekBar != null)
            {
              paramAnonymousSeekBar.clear();
              paramAnonymousSeekBar.append(Integer.toString(paramAnonymousInt + 10));
            }
          }
          DebugFragment.b(DebugFragment.this, false);
        }
        
        public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar) {}
        
        public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar) {}
      });
      n = Preferences.b(a, "maxBufferTime", 60);
      localEditText3.setText(Integer.valueOf(n).toString());
      n = (int)Math.round((n - 10.0D) / 110.0D * 100.0D);
      d = true;
      ((SeekBar)localObject4).setProgress(n);
      localEditText3.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          DebugFragment.b();
          new StringBuilder("afterTextChanged: ").append(DebugFragment.d(DebugFragment.this));
          int i;
          if (!DebugFragment.e(DebugFragment.this))
          {
            i = 60;
            if ((DebugFragment.d(DebugFragment.this) == null) || (DebugFragment.d(DebugFragment.this).equals(""))) {}
          }
          try
          {
            int j = Integer.parseInt(DebugFragment.d(DebugFragment.this));
            i = j;
          }
          catch (Exception paramAnonymousEditable)
          {
            for (;;)
            {
              double d;
              DebugFragment.b();
              continue;
              DebugFragment.b();
            }
          }
          if ((i >= 10) && (i <= 120))
          {
            DebugFragment.b(DebugFragment.this, true);
            d = (i - 10.0D) / 110.0D;
            DebugFragment.b();
            i = (int)Math.round(d * 100.0D);
            DebugFragment.b();
            localObject4.setProgress(i);
            DebugFragment.a(DebugFragment.this, false);
            return;
          }
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          DebugFragment.b();
          new StringBuilder("beforeTextChanged: ").append(paramAnonymousCharSequence.toString());
        }
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          DebugFragment.b();
          new StringBuilder("onTextChanged: ").append(paramAnonymousCharSequence.toString());
          DebugFragment.a(DebugFragment.this, paramAnonymousCharSequence.toString());
        }
      });
      ((Button)paramLayoutInflater.findViewById(2131690224)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView) {}
      });
      ((Button)paramLayoutInflater.findViewById(2131690225)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView) {}
      });
      localObject4 = (EditText)paramLayoutInflater.findViewById(2131690261);
      ((Button)paramLayoutInflater.findViewById(2131690262)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Editable localEditable = localObject4.getText();
          paramAnonymousView = null;
          if (localEditable != null) {
            paramAnonymousView = localEditable.toString();
          }
          if ((paramAnonymousView != null) && (!paramAnonymousView.equals(" ")) && (paramAnonymousView.contains("cbs://")))
          {
            paramAnonymousView = Uri.parse(Util.d(paramAnonymousView));
            if (!UriHandler.a(a, paramAnonymousView))
            {
              if ((a instanceof NavigationActivity)) {
                ((NavigationActivity)a).k();
              }
              if ((a instanceof SettingsActivity)) {
                ((SettingsActivity)a).finish();
              }
            }
            return;
          }
          Toast.makeText(a, "You must enter a valid deep link.", 1).show();
        }
      });
      ((Button)paramLayoutInflater.findViewById(2131690263)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(a, PlayerActivityV2.class);
          paramAnonymousView.putExtra("pid", "paRqwt8NVE0y");
          a.startActivity(paramAnonymousView);
        }
      });
      ((Button)paramLayoutInflater.findViewById(2131690264)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          DebugFragment.b();
          if (Util.e(a)) {}
          SVODService.a(a, Util.B(a) + "/all-access/upsell-video/", "10", "250474E2-10D7-3C65-81D1-FD0168A60E99");
        }
      });
      if (localObject9 != null)
      {
        localEditText1.setText(Preferences.b(a, "cbs_appsecret", ""));
        localEditText2.setText(Preferences.b(a, "cbs_base_uri", ""));
        ((EditText)localObject1).setText(Preferences.b(a, "chromecast_id", "0BBDC217"));
        if (localObject3 != null) {
          ((CheckBox)localObject3).setChecked(Preferences.a(a, "useResponseCache", true));
        }
        if (localCheckBox1 != null) {
          localCheckBox1.setChecked(Preferences.a(a, "allow_https", true));
        }
        if (localCheckBox2 != null) {
          localCheckBox2.setChecked(Preferences.a(a, "show_events", false));
        }
        if (localCheckBox3 != null) {
          localCheckBox3.setChecked(Preferences.a(a, "unicornUAT", false));
        }
      }
      paramViewGroup.setChecked(Preferences.a(a, "use_debug_mdialog", false));
      paramBundle.setChecked(Preferences.a(a, "use_debug_conviva", false));
      localSeekBar.setProgress(Math.round(100.0F * f1));
      localSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
      {
        public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
        {
          DebugFragment.b();
          float f = paramAnonymousInt / 100.0F;
          DebugFragment.b();
          CapUtil.a(a, f);
          localObject2.setText(Integer.toString(Math.round(f * m)));
        }
        
        public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar) {}
        
        public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar) {}
      });
      ((Button)paramLayoutInflater.findViewById(2131690259)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = localEditText1.getText();
          if (paramAnonymousView != null) {}
          for (String str1 = paramAnonymousView.toString();; str1 = null)
          {
            paramAnonymousView = localEditText2.getText();
            if (paramAnonymousView != null) {}
            for (String str2 = paramAnonymousView.toString();; str2 = null)
            {
              Object localObject1 = localObject1.getText();
              paramAnonymousView = null;
              if (localObject1 != null) {
                paramAnonymousView = localObject1.toString();
              }
              if ((paramAnonymousView != null) && (paramAnonymousView.equals("default"))) {
                paramAnonymousView = "CC1AD845";
              }
              for (;;)
              {
                Object localObject2 = localEditText3.getText();
                localObject1 = null;
                if (localObject2 != null) {
                  localObject1 = localObject2.toString();
                }
                int i1 = Integer.parseInt((String)localObject1);
                if (localObject3 != null) {}
                for (boolean bool1 = localObject3.isChecked();; bool1 = true)
                {
                  if (localCheckBox1 != null) {}
                  for (boolean bool2 = localCheckBox1.isChecked();; bool2 = true)
                  {
                    boolean bool5 = paramViewGroup.isChecked();
                    boolean bool6 = paramBundle.isChecked();
                    if (localCheckBox2 != null) {}
                    for (boolean bool3 = localCheckBox2.isChecked();; bool3 = true)
                    {
                      if (localCheckBox3 != null) {}
                      for (boolean bool4 = localCheckBox3.isChecked();; bool4 = false)
                      {
                        boolean bool7 = localObject5.isChecked();
                        localObject1 = localEditText4.getText().toString();
                        localObject2 = PreferenceManager.getDefaultSharedPreferences(a).edit();
                        int i2 = localObject7.getSelectedItemPosition();
                        ((SharedPreferences.Editor)localObject2).putString("ab_type", ((CharSequence)localObject8.getItem(i2)).toString());
                        ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", str1);
                        ((SharedPreferences.Editor)localObject2).putString("chromecast_id", paramAnonymousView);
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
                        Toast.makeText(a, "Saved", 0).show();
                        if ((a != null) && ((a instanceof NavigationActivity))) {
                          ((NavigationActivity)a).h();
                        }
                        paramAnonymousView = DataManager.getInstance().getConfiguration();
                        paramAnonymousView.setCbsHost(str2);
                        paramAnonymousView.setCbsAppSecret(str1);
                        paramAnonymousView.setUseHttps(bool2);
                        paramAnonymousView.setUseResponseCache(bool1);
                        return;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      });
      paramViewGroup = (CheckBox)paramLayoutInflater.findViewById(2131690267);
      localObject1 = (LinearLayout)paramLayoutInflater.findViewById(2131690268);
      paramBundle = (Spinner)paramLayoutInflater.findViewById(2131690269);
      localObject2 = (Spinner)paramLayoutInflater.findViewById(2131690270);
      localEditText1 = (EditText)paramLayoutInflater.findViewById(2131690271);
      localEditText2 = (EditText)paramLayoutInflater.findViewById(2131690272);
      localObject3 = ArrayAdapter.createFromResource(a, 2131623951, 17367049);
      ((ArrayAdapter)localObject3).setDropDownViewResource(17367049);
      ((Spinner)localObject2).setAdapter((SpinnerAdapter)localObject3);
      ((Spinner)localObject2).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          DebugFragment.a(DebugFragment.this, paramAnonymousInt);
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            localObject1.setVisibility(0);
            localEditText2.setText(localObject6.getString("weburltext", "http://www.cbs.com/shows/big_brother/live_feed/"));
            DebugFragment.a(DebugFragment.this, localObject6.getInt("webtabspinnerposition", 0));
            DebugFragment.a(DebugFragment.this, localObject6.getLong("showidselected", -1L));
            localEditText1.setText(localObject6.getString("webtablabel", ""));
            localObject2.setSelection(DebugFragment.f(DebugFragment.this));
            return;
          }
          localObject1.setVisibility(8);
          paramAnonymousCompoundButton = PreferenceManager.getDefaultSharedPreferences(a).edit();
          paramAnonymousCompoundButton.putBoolean("webcheckbox", false);
          paramAnonymousCompoundButton.putString("weburltext", "http://www.cbs.com/shows/big_brother/live_feed/");
          paramAnonymousCompoundButton.putString("webtablabel", "");
          paramAnonymousCompoundButton.putInt("webtabspinnerposition", 0);
          paramAnonymousCompoundButton.putLong("showidselected", -1L);
          paramAnonymousCompoundButton.commit();
        }
      });
      paramViewGroup.setChecked(((SharedPreferences)localObject6).getBoolean("webcheckbox", false));
      localObject1 = (Button)paramLayoutInflater.findViewById(2131690273);
      localObject2 = new ArrayList();
      ((Button)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = PreferenceManager.getDefaultSharedPreferences(a).edit();
          paramAnonymousView.putBoolean("webcheckbox", paramViewGroup.isChecked());
          paramAnonymousView.putString("weburltext", localEditText2.getText().toString());
          paramAnonymousView.putString("webtablabel", localEditText1.getText().toString());
          paramAnonymousView.putInt("webtabspinnerposition", DebugFragment.f(DebugFragment.this));
          paramAnonymousView.putLong("showidselected", DebugFragment.g(DebugFragment.this));
          paramAnonymousView.commit();
        }
      });
      paramBundle.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          DebugFragment.a(DebugFragment.this, ((Long)localObject2.get(paramAnonymousInt)).longValue());
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      i = new ShowServiceManager(getContext());
      i.setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
      {
        public final void a()
        {
          if (ShowServiceManager.b != null)
          {
            Object localObject2 = bshowItems;
            Object localObject1 = new ArrayList();
            if (localObject2 != null)
            {
              localObject2 = ((List)localObject2).iterator();
              int i = 0;
              int j = 0;
              while (((Iterator)localObject2).hasNext())
              {
                ShowItem localShowItem = (ShowItem)((Iterator)localObject2).next();
                if (showId == DebugFragment.g(DebugFragment.this)) {
                  j = i;
                }
                i += 1;
                ((ArrayList)localObject1).add(title + " - " + showId);
                localObject2.add(Long.valueOf(showId));
              }
              localObject1 = new ArrayAdapter(a, 17367048, (List)localObject1);
              ((ArrayAdapter)localObject1).setDropDownViewResource(17367049);
              paramBundle.setAdapter((SpinnerAdapter)localObject1);
              paramBundle.setSelection(j);
            }
          }
        }
        
        public final void a(int paramAnonymousInt) {}
      });
      i.getAllShows();
      return paramLayoutInflater;
      if ((Util.x(a) != null) && (Util.x(a).equals("com.android.vending")))
      {
        ((RadioButton)localObject6).setChecked(true);
        break;
      }
      ((RadioButton)localObject11).setChecked(true);
      break;
      bool = false;
      break label883;
      bool = false;
      break label905;
    }
  }
  
  public void onDestroy()
  {
    MVPDController.getInstance().setMVPDCallbacks(null);
    super.onDestroy();
    if (i != null) {
      i.c();
    }
  }
  
  public void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */