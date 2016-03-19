package com.mdialog.android.stream;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout.LayoutParams;
import com.mdialog.android.a.c;
import java.util.ArrayList;
import org.json.JSONObject;

public class a
{
  private Integer a;
  private String b;
  private Integer c;
  private Object d;
  private String e;
  private ArrayList<String> f;
  private ArrayList<String> g;
  private ArrayList<String> h;
  private Button i = null;
  private boolean j = false;
  private Context k;
  private View.OnClickListener l = new a.1(this);
  
  private a(Integer paramInteger1, Integer paramInteger2, String paramString, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3)
  {
    a = paramInteger1;
    b = "";
    c = paramInteger2;
    e = paramString;
    f = paramArrayList1;
    g = paramArrayList2;
    h = paramArrayList3;
  }
  
  private a(String paramString1, Integer paramInteger, String paramString2, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3)
  {
    a = Integer.valueOf(0);
    b = paramString1;
    c = paramInteger;
    e = paramString2;
    f = paramArrayList1;
    g = paramArrayList2;
    h = paramArrayList3;
  }
  
  static a a(Integer paramInteger, JSONObject paramJSONObject)
  {
    return new a(paramInteger, Integer.valueOf(paramJSONObject.getInt("duration")), paramJSONObject.getJSONObject("url").getString("href"), c.a(paramJSONObject.getJSONArray("start_tracking")), c.a(paramJSONObject.getJSONArray("complete_tracking")), c.a(paramJSONObject.getJSONArray("display_tracking")));
  }
  
  static a a(String paramString, JSONObject paramJSONObject)
  {
    return new a(paramString, Integer.valueOf(paramJSONObject.getInt("duration")), paramJSONObject.getJSONObject("url").getString("href"), c.a(paramJSONObject.getJSONArray("start_tracking")), c.a(paramJSONObject.getJSONArray("complete_tracking")), c.a(paramJSONObject.getJSONArray("display_tracking")));
  }
  
  public static boolean a(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
  }
  
  private Button b(Context paramContext)
  {
    k = paramContext;
    Button localButton = new Button(paramContext);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(b(Integer.valueOf(105)).intValue(), b(Integer.valueOf(40)).intValue());
    localLayoutParams.addRule(11);
    localLayoutParams.setMargins(0, 15, 15, 0);
    localButton.setLayoutParams(localLayoutParams);
    localButton.setBackgroundColor(Color.parseColor("#262626"));
    localButton.setTextColor(-3355444);
    localButton.setText("Learn More");
    localButton.setGravity(17);
    localButton.setPadding(0, 1, 0, 0);
    localButton.setOnClickListener(l);
    if (!a(paramContext))
    {
      localButton.requestFocus();
      paramContext = new GradientDrawable();
      paramContext.setColor(Color.parseColor("#262626"));
      paramContext.setCornerRadius(0.0F);
      paramContext.setStroke(4, Color.parseColor("#f9982a"));
      localButton.setBackgroundDrawable(paramContext);
    }
    return localButton;
  }
  
  private Integer b(Integer paramInteger)
  {
    return Integer.valueOf((int)TypedValue.applyDimension(1, paramInteger.intValue(), k.getResources().getDisplayMetrics()));
  }
  
  public static boolean c()
  {
    return Build.MODEL.startsWith("AFT");
  }
  
  public Integer a()
  {
    return a;
  }
  
  public void a(ViewGroup paramViewGroup)
  {
    new Handler(Looper.getMainLooper()).post(new a.3(this, paramViewGroup));
  }
  
  public void a(ViewGroup paramViewGroup, Integer paramInteger)
  {
    if (paramInteger.intValue() == c.intValue()) {
      com.mdialog.android.a.a(d, h);
    }
    if (j) {
      if (paramInteger.intValue() == 0) {
        j = false;
      }
    }
    while ((!a(paramViewGroup.getContext())) && (!c())) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new a.2(this, paramViewGroup, paramInteger));
  }
  
  public void a(Integer paramInteger)
  {
    a = paramInteger;
  }
  
  public void a(Object paramObject)
  {
    d = paramObject;
  }
  
  public Integer b()
  {
    return c;
  }
  
  void d()
  {
    com.mdialog.android.a.a(d, g);
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */