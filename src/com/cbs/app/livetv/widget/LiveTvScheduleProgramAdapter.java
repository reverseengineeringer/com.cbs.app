package com.cbs.app.livetv.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.utils.ImageHelper;
import com.d.a.b.f.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class LiveTvScheduleProgramAdapter
  extends ArrayListAdapter<SyncbakSchedule, a>
{
  private final int a;
  private Affiliate b;
  private boolean d;
  
  public LiveTvScheduleProgramAdapter()
  {
    this(0);
    d = false;
  }
  
  public LiveTvScheduleProgramAdapter(int paramInt)
  {
    a = paramInt;
  }
  
  public void setAffiliate(Affiliate paramAffiliate)
  {
    b = paramAffiliate;
  }
  
  public void setIsMvpd(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  static final class a
    extends RecyclerView.ViewHolder
  {
    private SimpleDateFormat a = new SimpleDateFormat("h:mma", Locale.US);
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private View f;
    private int g;
    private int h;
    
    public a(View paramView, int paramInt)
    {
      super();
      b = ((TextView)paramView.findViewById(2131690108));
      c = ((TextView)paramView.findViewById(2131690114));
      d = ((TextView)paramView.findViewById(2131690115));
      e = ((TextView)paramView.findViewById(2131690116));
      g = b.getCurrentTextColor();
      f = paramView.findViewById(2131690109);
      h = paramInt;
    }
    
    public final void a(Object paramObject, int paramInt, Affiliate paramAffiliate, boolean paramBoolean)
    {
      SyncbakSchedule localSyncbakSchedule = (SyncbakSchedule)paramObject;
      final Resources localResources = b.getContext().getResources();
      final Object localObject = a.format(new Date(TimeUnit.SECONDS.toMillis(localSyncbakSchedule.getStartTime())));
      b.setTextColor(g);
      f.setVisibility(8);
      switch (h)
      {
      default: 
        if (paramInt == 0)
        {
          paramObject = localResources.getString(2131231077, new Object[] { localObject });
          b.setTextColor(localResources.getColor(2131558525));
        }
        break;
      }
      label436:
      for (;;)
      {
        b.setText((CharSequence)paramObject);
        c.setText(localSyncbakSchedule.getName());
        paramObject = d;
        if (TextUtils.isEmpty(localSyncbakSchedule.getEpisodeTitle())) {}
        for (paramInt = 8;; paramInt = 0)
        {
          ((TextView)paramObject).setVisibility(paramInt);
          d.setText(localSyncbakSchedule.getEpisodeTitle());
          e.setText(localSyncbakSchedule.getDescription());
          return;
          paramObject = localResources.getString(2131231077, new Object[] { localObject });
          b.setTextColor(localResources.getColor(2131558525));
          f.setVisibility(0);
          localObject = f.findViewById(2131690111);
          ImageView localImageView2 = (ImageView)f.findViewById(2131690110);
          final ImageView localImageView1 = (ImageView)f.findViewById(2131690113);
          if ((paramAffiliate != null) && (!TextUtils.isEmpty(paramAffiliate.getLogo()))) {
            ImageHelper.a(ImageResizerUrl.a(paramAffiliate.getLogo(), localResources.getDimensionPixelSize(2131362079)), localImageView2);
          }
          ((View)localObject).setVisibility(8);
          if (!paramBoolean) {
            break label436;
          }
          paramAffiliate = MVPDController.getInstance().getSelectedMvpdConfig();
          if ((paramAffiliate != null) && (!TextUtils.isEmpty(paramAffiliate.getFilepathAdobeLogoOverride()))) {
            ImageHelper.a(ImageResizerUrl.a(paramAffiliate.getFilepathAdobeLogoOverride(), localResources.getDimensionPixelSize(2131362079)), localImageView1, new c()
            {
              public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
              {
                if (localImageView1.getDrawable() != null)
                {
                  localImageView1.getDrawable().setColorFilter(localResources.getColor(2131558516), PorterDuff.Mode.SRC_ATOP);
                  localObject.setVisibility(0);
                }
              }
            });
          }
          break;
          paramObject = localObject;
          if (paramInt != 0) {
            break;
          }
          paramObject = localResources.getString(2131231079, new Object[] { localObject });
          break;
          paramObject = localObject;
          if (paramInt != 1) {
            break;
          }
          paramObject = localResources.getString(2131231079, new Object[] { localObject });
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.LiveTvScheduleProgramAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */