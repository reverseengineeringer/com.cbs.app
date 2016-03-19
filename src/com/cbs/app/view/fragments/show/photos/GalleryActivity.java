package com.cbs.app.view.fragments.show.photos;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.InterstitialAdManagerV2;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.AlbumPhoto;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.widget.TouchTimeoutParent;
import com.cbs.app.widget.TouchTimeoutParent.TouchTimeoutListener;
import com.d.a.b.f.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import ru.truba.touchgallery.GalleryWidget.GalleryViewPager;
import ru.truba.touchgallery.TouchView.TouchImageView;

public class GalleryActivity
  extends AppCompatActivity
{
  private static final String d = GalleryActivity.class.getSimpleName();
  boolean a = false;
  boolean b = true;
  ViewPager.OnPageChangeListener c = new ViewPager.OnPageChangeListener()
  {
    public final void onPageScrollStateChanged(int paramAnonymousInt)
    {
      GalleryActivity.c();
    }
    
    public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
    {
      GalleryActivity.c();
    }
    
    public final void onPageSelected(int paramAnonymousInt)
    {
      GalleryActivity.c();
      setActionbar(paramAnonymousInt);
      setData(paramAnonymousInt);
      InterstitialAdManagerV2.a(GalleryActivity.this, 5);
      if (a) {
        b();
      }
    }
  };
  private GalleryViewPager e;
  private RelativeLayout f;
  private TextView g;
  private TextView h;
  private ImageButton i;
  private TouchTimeoutParent j;
  private a k;
  private ArrayList<AlbumPhoto> l = new ArrayList();
  private int m = 0;
  private Show n = null;
  private String o;
  private long p;
  private ShowAlbum q = null;
  
  private String a(Show paramShow, AlbumPhoto paramAlbumPhoto)
  {
    String str2 = paramAlbumPhoto.getFilepath();
    if ((paramShow != null) && (q != null))
    {
      String str1 = paramShow.getLink();
      if (str1 != null)
      {
        paramShow = str1;
        if (!str1.substring(str1.length() - 1).equals("/")) {
          paramShow = str1 + "/";
        }
        str1 = q.getTitle();
        if (str1 != null) {}
        for (str1 = str1.toLowerCase(Locale.getDefault()).replace(" ", "-").replace("\"", "").replace("'", "");; str1 = "blah") {
          return paramShow + "photos/" + q.getId() + "/" + str1 + "/" + paramAlbumPhoto.getId();
        }
      }
    }
    return str2;
  }
  
  private void d()
  {
    Object localObject1 = e.b;
    if (localObject1 != null)
    {
      localObject1 = ((View)localObject1).getTag();
      if ((localObject1 != null) && ((localObject1 instanceof AlbumPhoto)))
      {
        Object localObject2 = (AlbumPhoto)localObject1;
        new FacebookServiceImplV2(this).a((AlbumPhoto)localObject2);
        localObject1 = Action.aY;
        HashMap localHashMap = new HashMap();
        localHashMap.put("events", "event19,event10");
        localHashMap.put("ShowTitle", o);
        localHashMap.put("showId", Long.valueOf(p));
        localHashMap.put("AlbumID", Long.valueOf(((AlbumPhoto)localObject2).getAlbumId()));
        localHashMap.put("PhotoTitle", ((AlbumPhoto)localObject2).getTitle());
        localHashMap.put("PhotoID", Long.valueOf(((AlbumPhoto)localObject2).getId()));
        localObject2 = "cbscom:" + p + "|" + o;
        localHashMap.put("evar_63", localObject2);
        localHashMap.put("prop_63", localObject2);
        AnalyticsManager.a(this, (Action)localObject1, localHashMap);
      }
    }
  }
  
  private void e()
  {
    Object localObject1 = e.b;
    if (localObject1 != null)
    {
      localObject1 = ((View)localObject1).getTag();
      if ((localObject1 != null) && ((localObject1 instanceof AlbumPhoto)))
      {
        localObject1 = (AlbumPhoto)localObject1;
        Object localObject2 = g();
        Object localObject3 = a(n, (AlbumPhoto)localObject1);
        localObject2 = "Check out this photo I found on my " + (String)localObject2 + " with the CBS App! " + (String)localObject3;
        new Twitter(this).a(new TweetOperation((String)localObject2));
        localObject2 = Action.aX;
        localObject3 = new HashMap();
        ((HashMap)localObject3).put("events", "event19,event10");
        ((HashMap)localObject3).put("ShowTitle", o);
        ((HashMap)localObject3).put("showId", Long.valueOf(p));
        ((HashMap)localObject3).put("AlbumID", Long.valueOf(((AlbumPhoto)localObject1).getAlbumId()));
        ((HashMap)localObject3).put("PhotoTitle", ((AlbumPhoto)localObject1).getTitle());
        ((HashMap)localObject3).put("PhotoID", Long.valueOf(((AlbumPhoto)localObject1).getId()));
        localObject1 = "cbscom:" + p + "|" + o;
        ((HashMap)localObject3).put("evar_63", localObject1);
        ((HashMap)localObject3).put("prop_63", localObject1);
        AnalyticsManager.a(this, (Action)localObject2, (HashMap)localObject3);
      }
    }
  }
  
  private void f()
  {
    Object localObject1 = e.b;
    if (localObject1 != null)
    {
      localObject1 = ((View)localObject1).getTag();
      if ((localObject1 != null) && ((localObject1 instanceof AlbumPhoto)))
      {
        localObject1 = (AlbumPhoto)localObject1;
        Object localObject2 = g();
        Object localObject3 = a(n, (AlbumPhoto)localObject1);
        localObject2 = "Check out this photo I found on my " + (String)localObject2 + " with the CBS App! " + (String)localObject3;
        localObject3 = new EmailServiceImpl();
        ((EmailService)localObject3).setContext(this);
        ((EmailService)localObject3).a("Photo from CBS", (String)localObject2);
        localObject2 = Action.aZ;
        localObject3 = new HashMap();
        ((HashMap)localObject3).put("events", "event19");
        ((HashMap)localObject3).put("ShowTitle", o);
        ((HashMap)localObject3).put("showId", Long.valueOf(p));
        ((HashMap)localObject3).put("AlbumID", Long.valueOf(((AlbumPhoto)localObject1).getAlbumId()));
        ((HashMap)localObject3).put("PhotoTitle", ((AlbumPhoto)localObject1).getTitle());
        ((HashMap)localObject3).put("PhotoID", Long.valueOf(((AlbumPhoto)localObject1).getId()));
        localObject1 = "cbscom:" + p + "|" + o;
        ((HashMap)localObject3).put("evar_63", localObject1);
        ((HashMap)localObject3).put("prop_63", localObject1);
        AnalyticsManager.a(this, (Action)localObject2, (HashMap)localObject3);
      }
    }
  }
  
  private String g()
  {
    Object localObject = getApplicationContext();
    if ((localObject != null) && ((localObject instanceof MainApplication)))
    {
      localObject = ((MainApplication)localObject).getDeviceType();
      if ((localObject != null) && (((String)localObject).equals("androidphone"))) {
        return "Android Phone";
      }
      if ((localObject != null) && (((String)localObject).equals("androidtablet"))) {
        return "Android Tablet";
      }
      if ((localObject != null) && (((String)localObject).equals("amazontablet"))) {
        return "Amazon Tablet";
      }
      if ((localObject != null) && (((String)localObject).equals("amazonphone"))) {
        return "Amazon Phone";
      }
    }
    return "Android";
  }
  
  public final void a()
  {
    Object localObject = f.getLayoutParams();
    if ((localObject != null) && ((localObject instanceof RelativeLayout.LayoutParams)))
    {
      localObject = (RelativeLayout.LayoutParams)localObject;
      height = ((int)TypedValue.applyDimension(1, 200.0F, getResources().getDisplayMetrics()));
      f.setLayoutParams((ViewGroup.LayoutParams)localObject);
      f.invalidate();
    }
    f.invalidate();
    a = true;
    if (i != null) {
      i.setImageDrawable(getResources().getDrawable(2130837613));
    }
    if (h != null)
    {
      h.setLines(10);
      h.invalidate();
    }
    localObject = Action.ap;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("ShowTitle", o);
    localHashMap.put("showId", Long.valueOf(p));
    String str = "cbscom:" + p + "|" + o;
    localHashMap.put("evar_63", str);
    localHashMap.put("prop_63", str);
    AnalyticsManager.a(this, (Action)localObject, localHashMap);
  }
  
  public final void b()
  {
    Object localObject = f.getLayoutParams();
    if ((localObject != null) && ((localObject instanceof RelativeLayout.LayoutParams)))
    {
      localObject = (RelativeLayout.LayoutParams)localObject;
      height = ((int)TypedValue.applyDimension(1, 60.0F, getResources().getDisplayMetrics()));
      f.setLayoutParams((ViewGroup.LayoutParams)localObject);
      f.invalidate();
    }
    a = false;
    if (i != null) {
      i.setImageDrawable(getResources().getDrawable(2130837614));
    }
    if (h != null)
    {
      h.setLines(1);
      h.invalidate();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    InterstitialAdManagerV2.a();
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getExtras();
      if (paramBundle != null)
      {
        m = paramBundle.getInt("selected");
        new StringBuilder("selected:").append(m);
        p = paramBundle.getLong("show_id");
        o = paramBundle.getString("show_title");
        n = ((Show)paramBundle.getParcelable("show"));
        q = ((ShowAlbum)paramBundle.getParcelable("showAlbum"));
        paramBundle = paramBundle.getParcelableArrayList("items");
        if (paramBundle != null)
        {
          l = new ArrayList();
          paramBundle = paramBundle.iterator();
          while (paramBundle.hasNext())
          {
            Object localObject = (Parcelable)paramBundle.next();
            if ((localObject != null) && ((localObject instanceof AlbumPhoto)))
            {
              localObject = (AlbumPhoto)localObject;
              new StringBuilder("albumPhoto:").append(((AlbumPhoto)localObject).getId());
              l.add(localObject);
            }
          }
        }
        new StringBuilder("album count: ").append(l.size());
      }
    }
    setContentView(2130903188);
    paramBundle = findViewById(2131690079);
    if ((paramBundle != null) && ((paramBundle instanceof GalleryViewPager)))
    {
      e = ((GalleryViewPager)paramBundle);
      e.setOffscreenPageLimit(1);
      e.setCurrentItem(m);
      k = new a(this);
      e.setAdapter(k);
      e.setCurrentItem(m);
      e.setOnPageChangeListener(c);
    }
    paramBundle = findViewById(2131689712);
    if ((paramBundle != null) && ((paramBundle instanceof RelativeLayout))) {
      f = ((RelativeLayout)paramBundle);
    }
    paramBundle = findViewById(2131689589);
    if ((paramBundle != null) && ((paramBundle instanceof TextView))) {
      g = ((TextView)paramBundle);
    }
    paramBundle = findViewById(2131689859);
    if ((paramBundle != null) && ((paramBundle instanceof TextView))) {
      h = ((TextView)paramBundle);
    }
    paramBundle = findViewById(2131690080);
    if ((paramBundle != null) && ((paramBundle instanceof ImageButton)))
    {
      i = ((ImageButton)paramBundle);
      i.bringToFront();
      i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          GalleryActivity.c();
          if (a)
          {
            b();
            return;
          }
          a();
        }
      });
    }
    setActionbar(m);
    setData(m);
    paramBundle = findViewById(2131690078);
    if ((paramBundle != null) && ((paramBundle instanceof TouchTimeoutParent)))
    {
      j = ((TouchTimeoutParent)paramBundle);
      paramBundle = new TouchTimeoutParent.TouchTimeoutListener()
      {
        public final void a()
        {
          GalleryActivity.c();
          jdField_this.runOnUiThread(new Runnable()
          {
            public final void run()
            {
              GalleryActivity.a(GalleryActivity.this);
            }
          });
        }
        
        public final void b()
        {
          GalleryActivity.c();
          jdField_this.runOnUiThread(new Runnable()
          {
            public final void run()
            {
              GalleryActivity.b(GalleryActivity.this);
            }
          });
        }
      };
      j.a(paramBundle);
      j.c();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if ((Util.i(this)) || (Util.j(this)))
    {
      paramMenu.add(1, 0, 1, "Facebook").setIcon(2130837642).setShowAsAction(1);
      paramMenu.add(1, 10, 1, "Twitter").setIcon(2130837664).setShowAsAction(1);
      paramMenu.add(1, 20, 1, "Email").setIcon(2130837641).setShowAsAction(1);
      paramMenu.add(1, 30, 1, "Close").setIcon(2130837674).setShowAsAction(1);
      return true;
    }
    paramMenu.add(1, 40, 1, "Social").setIcon(2130837900).setShowAsAction(1);
    return true;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    e = null;
    f = null;
    g = null;
    h = null;
    i = null;
    j = null;
    k = null;
    l = null;
  }
  
  public boolean onOptionsItemSelected(final MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      finish();
      return true;
    case 0: 
      d();
      return true;
    case 10: 
      e();
      return true;
    case 20: 
      f();
      return true;
    case 40: 
      paramMenuItem = new Dialog(this);
      paramMenuItem.requestWindowFeature(1);
      paramMenuItem.setContentView(2130903189);
      View localView = paramMenuItem.findViewById(2131689841);
      if ((localView != null) && ((localView instanceof Button))) {
        ((Button)localView).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramMenuItem.dismiss();
          }
        });
      }
      localView = paramMenuItem.findViewById(2131689840);
      if ((localView != null) && ((localView instanceof TextView))) {
        ((TextView)localView).setText("Share This Photo");
      }
      localView = paramMenuItem.findViewById(2131690081);
      if (localView != null) {
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            GalleryActivity.c();
            GalleryActivity.c(GalleryActivity.this);
          }
        });
      }
      localView = paramMenuItem.findViewById(2131690082);
      if (localView != null) {
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            GalleryActivity.c();
            GalleryActivity.d(GalleryActivity.this);
          }
        });
      }
      localView = paramMenuItem.findViewById(2131690083);
      if (localView != null) {
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            GalleryActivity.c();
            GalleryActivity.e(GalleryActivity.this);
          }
        });
      }
      paramMenuItem.show();
      return true;
    }
    finish();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    MainApplication.c();
    AnalyticsManager.b(this);
    if (j != null) {
      j.b();
    }
  }
  
  public void onRestart()
  {
    super.onRestart();
  }
  
  public void onResume()
  {
    super.onResume();
    MainApplication.b();
    if (j != null) {
      j.a();
    }
    Action localAction = Action.w;
    HashMap localHashMap = new HashMap();
    localHashMap.put("pageView", "anything");
    localHashMap.put("showId", String.valueOf(p));
    localHashMap.put("ShowTitle", o);
    String str = "cbscom:" + p + "|" + o;
    localHashMap.put("evar_63", str);
    localHashMap.put("prop_63", str);
    AnalyticsManager.a(this, localAction, localHashMap);
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  public void onStop()
  {
    super.onStop();
  }
  
  public void setActionbar(int paramInt)
  {
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setDisplayShowHomeEnabled(true);
    localActionBar.setHomeButtonEnabled(true);
    localActionBar.setLogo(2130837615);
    if ((Util.i(this)) || (Util.j(this)))
    {
      localActionBar.setTitle(paramInt + 1 + " of " + l.size());
      localActionBar.setDisplayShowHomeEnabled(false);
      localActionBar.setHomeButtonEnabled(false);
      return;
    }
    Object localObject = getSystemService("layout_inflater");
    if ((localObject != null) && ((localObject instanceof LayoutInflater)))
    {
      localObject = ((LayoutInflater)localObject).inflate(2130903187, null);
      if (localObject != null)
      {
        View localView = ((View)localObject).findViewById(2131690076);
        if ((localView != null) && ((localView instanceof TextView))) {
          ((TextView)localView).setText(paramInt + 1 + " of " + l.size());
        }
      }
      localActionBar.setDisplayShowCustomEnabled(true);
      localActionBar.setCustomView((View)localObject);
    }
    localActionBar.setDisplayShowTitleEnabled(false);
    localActionBar.setLogo(2130837615);
    localActionBar.setDisplayShowHomeEnabled(true);
    localActionBar.setHomeButtonEnabled(true);
  }
  
  public void setData(int paramInt)
  {
    b();
    Object localObject = (AlbumPhoto)l.get(paramInt);
    if (localObject != null)
    {
      if (g != null)
      {
        String str = ((AlbumPhoto)localObject).getTitle();
        if (str != null) {
          g.setText(str);
        }
      }
      if (h != null)
      {
        localObject = Html.fromHtml(((AlbumPhoto)localObject).getPhotoCaption()).toString();
        h.setText((CharSequence)localObject);
      }
    }
  }
  
  final class a
    extends PagerAdapter
  {
    Context a;
    Bitmap b;
    
    public a(Context paramContext)
    {
      GalleryActivity.c();
      a = paramContext;
      b = BitmapFactory.decodeResource(a.getResources(), 2130837810);
      GalleryActivity.c();
      new StringBuilder("context ViewPagerAdapter: ").append(a);
    }
    
    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
    {
      GalleryActivity.c();
      if ((paramObject != null) && ((paramObject instanceof View))) {
        paramViewGroup.removeView((View)paramObject);
      }
    }
    
    public final int getCount()
    {
      if (GalleryActivity.f(GalleryActivity.this) == null) {
        return 0;
      }
      return GalleryActivity.f(GalleryActivity.this).size();
    }
    
    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
    {
      GalleryActivity.c();
      TouchImageView localTouchImageView = new TouchImageView(a);
      Object localObject = (AlbumPhoto)GalleryActivity.f(GalleryActivity.this).get(paramInt);
      localTouchImageView.setTag(localObject);
      localTouchImageView.setEnabled(false);
      localObject = ((AlbumPhoto)localObject).getFilepath();
      if (localObject != null)
      {
        int i = Util.a(a);
        paramInt = 400;
        if ((Util.i(a)) || (Util.j(a))) {
          paramInt = 600;
        }
        GalleryActivity.c();
        localObject = ImageHelper.a((String)localObject, paramInt, i);
        GalleryActivity.c();
        ImageHelper.b((String)localObject, localTouchImageView, new c()
        {
          public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
          {
            GalleryActivity.c();
            paramAnonymousView.setEnabled(true);
          }
        });
        GalleryActivity.c();
        localTouchImageView.setImageBitmap(b);
        GalleryActivity.c();
      }
      paramViewGroup.addView(localTouchImageView, 0);
      return localTouchImageView;
    }
    
    public final boolean isViewFromObject(View paramView, Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (paramObject != null)
      {
        bool1 = bool2;
        if ((paramObject instanceof View))
        {
          bool1 = bool2;
          if (paramView == (View)paramObject) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public final void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
    {
      super.setPrimaryItem(paramViewGroup, paramInt, paramObject);
      GalleryActivity.c();
      if ((paramViewGroup != null) && ((paramViewGroup instanceof GalleryViewPager)) && (paramObject != null) && ((paramObject instanceof TouchImageView)))
      {
        GalleryActivity.c();
        new StringBuilder("setPrimaryItem found it, context: ").append(a);
        b = ((TouchImageView)paramObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.GalleryActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */