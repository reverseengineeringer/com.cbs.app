package com.cbs.app.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.google.android.gms.cast.e;
import com.google.android.gms.common.images.WebImage;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.widgets.MiniController.a;
import java.util.List;

public class CBSMiniController
  extends RelativeLayout
  implements com.google.android.libraries.cast.companionlibrary.widgets.a
{
  protected ImageView a;
  protected TextView b;
  protected TextView c;
  protected ImageView d;
  protected ProgressBar e;
  com.google.android.libraries.cast.companionlibrary.cast.a.c f = new com.google.android.libraries.cast.companionlibrary.cast.a.d()
  {
    public final void a(double paramAnonymousDouble, boolean paramAnonymousBoolean)
    {
      super.a(paramAnonymousDouble, paramAnonymousBoolean);
      new StringBuilder("onVolumeChanged: ").append(paramAnonymousDouble).append(" isMute: ").append(paramAnonymousBoolean);
      if (paramAnonymousDouble == 0.0D) {
        paramAnonymousBoolean = true;
      }
      if (CBSMiniController.a(CBSMiniController.this) != null)
      {
        if (paramAnonymousBoolean) {
          CBSMiniController.a(CBSMiniController.this).setSelected(false);
        }
      }
      else {
        return;
      }
      CBSMiniController.a(CBSMiniController.this).setSelected(true);
    }
  };
  View.OnClickListener g = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (CBSMiniController.b(CBSMiniController.this) != null) {
        CBSMiniController.a(CBSMiniController.this, false);
      }
      try
      {
        CBSMiniController.b(CBSMiniController.this).a(a.getContext());
        return;
      }
      catch (Exception paramAnonymousView)
      {
        CBSMiniController.b(CBSMiniController.this).a(2131230901, -1);
      }
    }
  };
  private ImageView h;
  private MiniController.a i;
  private Drawable j;
  private Drawable k;
  private View l;
  private ImageView m;
  private int n = 1;
  private Drawable o;
  private com.google.android.libraries.cast.companionlibrary.a.a p;
  
  public CBSMiniController(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  /* Error */
  public CBSMiniController(Context paramContext, android.util.AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokespecial 69	android/widget/RelativeLayout:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   6: aload_0
    //   7: iconst_1
    //   8: putfield 48	com/cbs/app/cast/CBSMiniController:n	I
    //   11: aload_0
    //   12: new 8	com/cbs/app/cast/CBSMiniController$1
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 51	com/cbs/app/cast/CBSMiniController$1:<init>	(Lcom/cbs/app/cast/CBSMiniController;)V
    //   20: putfield 53	com/cbs/app/cast/CBSMiniController:f	Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;
    //   23: aload_0
    //   24: new 14	com/cbs/app/cast/CBSMiniController$4
    //   27: dup
    //   28: aload_0
    //   29: invokespecial 54	com/cbs/app/cast/CBSMiniController$4:<init>	(Lcom/cbs/app/cast/CBSMiniController;)V
    //   32: putfield 56	com/cbs/app/cast/CBSMiniController:g	Landroid/view/View$OnClickListener;
    //   35: aload_1
    //   36: invokestatic 75	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   39: ldc 76
    //   41: aload_0
    //   42: invokevirtual 80	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
    //   45: pop
    //   46: aload_0
    //   47: aload_0
    //   48: invokevirtual 84	com/cbs/app/cast/CBSMiniController:getResources	()Landroid/content/res/Resources;
    //   51: ldc 85
    //   53: invokevirtual 91	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   56: putfield 93	com/cbs/app/cast/CBSMiniController:j	Landroid/graphics/drawable/Drawable;
    //   59: aload_0
    //   60: aload_0
    //   61: invokevirtual 84	com/cbs/app/cast/CBSMiniController:getResources	()Landroid/content/res/Resources;
    //   64: ldc 94
    //   66: invokevirtual 91	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   69: putfield 96	com/cbs/app/cast/CBSMiniController:k	Landroid/graphics/drawable/Drawable;
    //   72: aload_0
    //   73: aload_0
    //   74: invokevirtual 84	com/cbs/app/cast/CBSMiniController:getResources	()Landroid/content/res/Resources;
    //   77: ldc 97
    //   79: invokevirtual 91	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   82: putfield 99	com/cbs/app/cast/CBSMiniController:o	Landroid/graphics/drawable/Drawable;
    //   85: aload_0
    //   86: invokespecial 59	com/cbs/app/cast/CBSMiniController:b	()V
    //   89: aload_0
    //   90: invokevirtual 103	com/cbs/app/cast/CBSMiniController:getContext	()Landroid/content/Context;
    //   93: invokestatic 109	com/cbs/app/view/utils/Util:H	(Landroid/content/Context;)Z
    //   96: ifeq +92 -> 188
    //   99: invokestatic 115	com/cbs/app/view/MainApplication:getVideoCastManager	()Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    //   102: astore_1
    //   103: aload_1
    //   104: invokevirtual 121	com/google/android/libraries/cast/companionlibrary/cast/c:L	()Z
    //   107: istore 5
    //   109: aload_1
    //   110: invokevirtual 125	com/google/android/libraries/cast/companionlibrary/cast/c:K	()D
    //   113: dstore_3
    //   114: dload_3
    //   115: dconst_0
    //   116: dcmpl
    //   117: ifne +6 -> 123
    //   120: iconst_1
    //   121: istore 5
    //   123: iload 5
    //   125: ifeq +97 -> 222
    //   128: aload_0
    //   129: getfield 127	com/cbs/app/cast/CBSMiniController:h	Landroid/widget/ImageView;
    //   132: iconst_0
    //   133: invokevirtual 133	android/widget/ImageView:setSelected	(Z)V
    //   136: aload_0
    //   137: getfield 127	com/cbs/app/cast/CBSMiniController:h	Landroid/widget/ImageView;
    //   140: new 10	com/cbs/app/cast/CBSMiniController$2
    //   143: dup
    //   144: aload_0
    //   145: invokespecial 134	com/cbs/app/cast/CBSMiniController$2:<init>	(Lcom/cbs/app/cast/CBSMiniController;)V
    //   148: invokevirtual 138	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   151: aload_0
    //   152: getfield 140	com/cbs/app/cast/CBSMiniController:d	Landroid/widget/ImageView;
    //   155: new 12	com/cbs/app/cast/CBSMiniController$3
    //   158: dup
    //   159: aload_0
    //   160: invokespecial 141	com/cbs/app/cast/CBSMiniController$3:<init>	(Lcom/cbs/app/cast/CBSMiniController;)V
    //   163: invokevirtual 138	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   166: aload_0
    //   167: getfield 143	com/cbs/app/cast/CBSMiniController:m	Landroid/widget/ImageView;
    //   170: aload_0
    //   171: getfield 56	com/cbs/app/cast/CBSMiniController:g	Landroid/view/View$OnClickListener;
    //   174: invokevirtual 138	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   177: aload_0
    //   178: getfield 145	com/cbs/app/cast/CBSMiniController:l	Landroid/view/View;
    //   181: aload_0
    //   182: getfield 56	com/cbs/app/cast/CBSMiniController:g	Landroid/view/View$OnClickListener;
    //   185: invokevirtual 148	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   188: return
    //   189: astore_1
    //   190: iconst_0
    //   191: istore 5
    //   193: aload_1
    //   194: invokevirtual 151	com/google/android/libraries/cast/companionlibrary/cast/b/d:printStackTrace	()V
    //   197: goto -74 -> 123
    //   200: astore_1
    //   201: iconst_0
    //   202: istore 5
    //   204: aload_1
    //   205: invokevirtual 152	com/google/android/libraries/cast/companionlibrary/cast/b/b:printStackTrace	()V
    //   208: goto -85 -> 123
    //   211: astore_1
    //   212: iconst_0
    //   213: istore 5
    //   215: aload_1
    //   216: invokevirtual 153	com/google/android/libraries/cast/companionlibrary/cast/b/a:printStackTrace	()V
    //   219: goto -96 -> 123
    //   222: aload_0
    //   223: getfield 127	com/cbs/app/cast/CBSMiniController:h	Landroid/widget/ImageView;
    //   226: iconst_1
    //   227: invokevirtual 133	android/widget/ImageView:setSelected	(Z)V
    //   230: goto -94 -> 136
    //   233: astore_1
    //   234: goto -19 -> 215
    //   237: astore_1
    //   238: goto -34 -> 204
    //   241: astore_1
    //   242: goto -49 -> 193
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	245	0	this	CBSMiniController
    //   0	245	1	paramContext	Context
    //   0	245	2	paramAttributeSet	android.util.AttributeSet
    //   113	2	3	d1	double
    //   107	107	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   103	109	189	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   103	109	200	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   103	109	211	com/google/android/libraries/cast/companionlibrary/cast/b/a
    //   109	114	233	com/google/android/libraries/cast/companionlibrary/cast/b/a
    //   109	114	237	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   109	114	241	com/google/android/libraries/cast/companionlibrary/cast/b/d
  }
  
  private void a()
  {
    Object localObject = MainApplication.getVideoCastManager();
    try
    {
      localObject = ((com.google.android.libraries.cast.companionlibrary.cast.c)localObject).J();
      if (localObject != null)
      {
        localObject = ((com.google.android.gms.cast.d)localObject).d();
        if (localObject != null)
        {
          List localList = ((e)localObject).b();
          if ((localList != null) && (localList.size() > 2))
          {
            localObject = ((WebImage)((e)localObject).b().get(2)).b();
            new StringBuilder("override image: ").append(((Uri)localObject).toString());
            ImageHelper.a(((Uri)localObject).toString(), a, -1, -1);
          }
        }
      }
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
    {
      Log.e("MiniController", "error: " + locald.getLocalizedMessage());
      return;
    }
    catch (b localb)
    {
      Log.e("MiniController", "error: " + localb.getLocalizedMessage());
    }
  }
  
  private void a(boolean paramBoolean)
  {
    ProgressBar localProgressBar = e;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      localProgressBar.setVisibility(i1);
      return;
    }
  }
  
  private void b()
  {
    h = ((ImageView)findViewById(2131689672));
    Context localContext = getContext();
    int i1 = Util.b(localContext);
    if ((!Util.f(localContext)) && (i1 > 400)) {
      h.setVisibility(0);
    }
    a = ((ImageView)findViewById(2131689761));
    b = ((TextView)findViewById(2131689765));
    c = ((TextView)findViewById(2131689766));
    d = ((ImageView)findViewById(2131689762));
    e = ((ProgressBar)findViewById(2131689763));
    l = findViewById(2131690150);
    m = ((ImageView)findViewById(2131689665));
    m.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView) {}
    });
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (Util.H(getContext()))
    {
      if (Util.H(getContext()))
      {
        com.google.android.libraries.cast.companionlibrary.cast.c localc = MainApplication.getVideoCastManager();
        if (localc != null) {
          localc.a(f);
        }
      }
      return;
    }
    setVisibility(8);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (p != null)
    {
      p.cancel(true);
      p = null;
    }
    if (Util.H(getContext()))
    {
      com.google.android.libraries.cast.companionlibrary.cast.c localc = MainApplication.getVideoCastManager();
      if (localc != null) {
        localc.b(f);
      }
    }
  }
  
  public final void setIcon(Bitmap paramBitmap)
  {
    a();
  }
  
  public void setIcon(Uri paramUri)
  {
    new StringBuilder("setIcon: ").append(paramUri);
    a();
  }
  
  public void setOnMiniControllerChangedListener(MiniController.a parama)
  {
    if (parama != null) {
      i = parama;
    }
  }
  
  public void setPlaybackStatus(int paramInt1, int paramInt2)
  {
    new StringBuilder("setPlaybackStatus state: ").append(paramInt1).append(" idleReason: ").append(paramInt2);
    switch (paramInt1)
    {
    default: 
      d.setVisibility(4);
      a(false);
      return;
    case 2: 
      d.setVisibility(0);
      ImageView localImageView = d;
      Drawable localDrawable;
      switch (n)
      {
      default: 
        localDrawable = j;
      }
      for (;;)
      {
        localImageView.setImageDrawable(localDrawable);
        a(false);
        return;
        localDrawable = j;
        continue;
        localDrawable = o;
      }
    case 3: 
      d.setVisibility(0);
      d.setImageDrawable(k);
      a(false);
      return;
    case 1: 
      switch (n)
      {
      default: 
        return;
      case 1: 
        d.setVisibility(4);
        a(false);
        return;
      }
      if (paramInt2 == 2)
      {
        d.setVisibility(0);
        d.setImageDrawable(k);
        a(false);
        return;
      }
      d.setVisibility(4);
      a(false);
      return;
    }
    d.setVisibility(4);
    a(true);
  }
  
  public void setStreamType(int paramInt)
  {
    n = paramInt;
  }
  
  public void setSubtitle(String paramString)
  {
    Object localObject = MainApplication.getVideoCastManager();
    if (localObject != null)
    {
      paramString = null;
      try
      {
        localObject = ((com.google.android.libraries.cast.companionlibrary.cast.c)localObject).J();
        paramString = (String)localObject;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
      {
        for (;;)
        {
          Log.e("MiniController", "error: " + locald.getLocalizedMessage());
        }
      }
      catch (b localb)
      {
        for (;;)
        {
          Log.e("MiniController", "error: " + localb.getLocalizedMessage());
        }
      }
      if (paramString != null)
      {
        paramString = paramString.d();
        if (paramString != null)
        {
          paramString = paramString.a("com.google.android.gms.cast.metadata.SUBTITLE");
          if (paramString == null) {}
        }
      }
    }
    for (;;)
    {
      c.setText(paramString);
      return;
      paramString = "";
    }
  }
  
  public void setTitle(String paramString)
  {
    b.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSMiniController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */