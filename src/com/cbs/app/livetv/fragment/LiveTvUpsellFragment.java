package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.CustomTypefaceSpan;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class LiveTvUpsellFragment
  extends UpSellDataFragment
{
  protected BaseFragmentCallBack a;
  private DisplayMetrics b;
  private LiveTvContentFlipper c;
  private Button d;
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    c.setContentView(paramLayoutInflater.inflate(2130903171, paramViewGroup, false));
    paramLayoutInflater = c;
    c.setDisplayedChild(0);
    d = ((Button)paramLayoutInflater.findViewById(2131690003));
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131690005);
    e();
    Object localObject = (TextView)paramLayoutInflater.findViewById(2131689977);
    if (AuthStatusManager.e())
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131230838) + " ");
      int i = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(getString(2131231259));
      localSpannableStringBuilder.setSpan(new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvUpsellFragment.a(LiveTvUpsellFragment.this);
        }
      }, i, localSpannableStringBuilder.length(), 33);
      ((TextView)localObject).setMovementMethod(LinkMovementMethod.getInstance());
      ((TextView)localObject).setText(localSpannableStringBuilder);
      d.setVisibility(0);
      paramViewGroup.setVisibility(8);
    }
    for (;;)
    {
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689997);
      localObject = new SpannableStringBuilder(getString(2131231335).toUpperCase());
      ((SpannableStringBuilder)localObject).setSpan(new CustomTypefaceSpan(Typeface.createFromAsset(getResources().getAssets(), "fonts/Roboto-Bold.ttf")), 0, ((SpannableStringBuilder)localObject).length(), 33);
      ((SpannableStringBuilder)localObject).append(" " + getString(2131231208).toUpperCase());
      paramViewGroup.setText((CharSequence)localObject);
      paramLayoutInflater.findViewById(2131689998).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvUpsellFragment.b(LiveTvUpsellFragment.this);
        }
      });
      return;
      if (!AuthStatusManager.c()) {
        break;
      }
      d.setVisibility(8);
      paramViewGroup.setVisibility(8);
      ((TextView)localObject).setVisibility(8);
    }
    if (AuthStatusManager.d()) {
      d.setVisibility(8);
    }
    for (;;)
    {
      paramViewGroup.setVisibility(0);
      break;
      if (!AuthStatusManager.f()) {
        if (!AuthStatusManager.g()) {
          break;
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    new ShowServiceImpl().g(getActivity(), paramString, new ResponseModelListener()
    {
      public final void a() {}
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if (!isAdded()) {}
        do
        {
          do
          {
            return;
          } while (!(paramAnonymousResponseModel instanceof VideoEndpointResponse));
          paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
        } while ((paramAnonymousResponseModel == null) || (paramAnonymousResponseModel.size() <= 0));
        VideoUtil.a(getActivity(), (VideoData)paramAnonymousResponseModel.get(0));
      }
    });
  }
  
  public static LiveTvUpsellFragment b()
  {
    Bundle localBundle = new Bundle();
    LiveTvUpsellFragment localLiveTvUpsellFragment = new LiveTvUpsellFragment();
    localLiveTvUpsellFragment.setArguments(localBundle);
    return localLiveTvUpsellFragment;
  }
  
  protected final void a()
  {
    c.setDisplayedChild(2);
  }
  
  protected final void a(UpsellEndpointResponse paramUpsellEndpointResponse)
  {
    View localView1 = getView();
    if (localView1 != null)
    {
      Object localObject1 = paramUpsellEndpointResponse.getUpsellInfo();
      if (localObject1 != null)
      {
        paramUpsellEndpointResponse = localView1.findViewById(2131690007);
        paramUpsellEndpointResponse.setVisibility(8);
        View localView2 = localView1.findViewById(2131690011);
        localView2.setVisibility(8);
        View localView3 = localView1.findViewById(2131690016);
        localView3.setVisibility(8);
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          final UpsellInfo localUpsellInfo = (UpsellInfo)((Iterator)localObject1).next();
          final Object localObject2 = localUpsellInfo.getActionTarget();
          if ("android_content_1".equals(localObject2))
          {
            localObject2 = (TextView)localView1.findViewById(2131690004);
            if (AuthStatusManager.d())
            {
              ((TextView)localObject2).setText(getString(2131231312));
            }
            else
            {
              ((TextView)localObject2).setText(localUpsellInfo.getCallToAction());
              ((TextView)localObject2).setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  LiveTvUpsellFragment.a(LiveTvUpsellFragment.this, localUpsellInfo.getContentId());
                }
              });
            }
          }
          else if ("android_content_2".equals(localObject2))
          {
            localObject2 = (TextView)localView1.findViewById(2131689999);
            ((TextView)localObject2).setText(localUpsellInfo.getCallToAction());
            ((TextView)localObject2).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.b(LiveTvUpsellFragment.this, localUpsellInfo.getContentId());
              }
            });
            ((TextView)localView1.findViewById(2131690022)).setText(localUpsellInfo.getUpsellMessage());
          }
          else if ("android_content_3".equals(localObject2))
          {
            paramUpsellEndpointResponse.setVisibility(0);
            ((TextView)localView1.findViewById(2131690008)).setText(localUpsellInfo.getUpsellMessage());
            localObject2 = (ImageView)localView1.findViewById(2131690010);
            ImageHelper.a(ImageResizerUrl.a(localUpsellInfo.getUpsellImagePath(), b.widthPixels / 2), (ImageView)localObject2);
            ((TextView)localView1.findViewById(2131690009)).setText(localUpsellInfo.getUpsellMessage2());
            localObject2 = (Button)localView1.findViewById(2131689897);
            ((Button)localObject2).setText(localUpsellInfo.getCallToAction());
            ((Button)localObject2).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.c(LiveTvUpsellFragment.this);
              }
            });
          }
          else if ("android_content_4".equals(localObject2))
          {
            localView2.setVisibility(0);
            ((TextView)localView1.findViewById(2131690012)).setText(localUpsellInfo.getUpsellMessage());
            localObject2 = (ImageView)localView1.findViewById(2131690014);
            ImageHelper.a(ImageResizerUrl.a(localUpsellInfo.getUpsellImagePath(), b.widthPixels / 2), (ImageView)localObject2);
            ((TextView)localView1.findViewById(2131690013)).setText(localUpsellInfo.getUpsellMessage2());
            localObject2 = (Button)localView1.findViewById(2131690015);
            ((Button)localObject2).setText(localUpsellInfo.getCallToAction());
            ((Button)localObject2).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.c(LiveTvUpsellFragment.this, localUpsellInfo.getCallToActionURL());
              }
            });
          }
          else if ("android_content_5".equals(localObject2))
          {
            localView3.setVisibility(0);
            ((TextView)localView1.findViewById(2131690017)).setText(localUpsellInfo.getUpsellMessage());
            localObject2 = (ImageView)localView1.findViewById(2131690019);
            ImageHelper.a(ImageResizerUrl.a(localUpsellInfo.getUpsellImagePath(), b.widthPixels / 2), (ImageView)localObject2);
            ((TextView)localView1.findViewById(2131690018)).setText(localUpsellInfo.getUpsellMessage2());
            localObject2 = (Button)localView1.findViewById(2131690020);
            ((Button)localObject2).setText(localUpsellInfo.getCallToAction());
            ((Button)localObject2).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.d(LiveTvUpsellFragment.this, localUpsellInfo.getCallToActionURL());
              }
            });
          }
          else if ("android_content_6".equals(localObject2))
          {
            localObject2 = (Button)localView1.findViewById(2131690021);
            ((Button)localObject2).setText(localUpsellInfo.getCallToAction());
            ((Button)localObject2).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.e(LiveTvUpsellFragment.this, localUpsellInfo.getCallToActionURL());
              }
            });
            ((TextView)localView1.findViewById(2131690002)).setText(localUpsellInfo.getUpsellMessage());
            ((TextView)localView1.findViewById(2131690006)).setText(localUpsellInfo.getUpsellMessage2());
          }
          else if ("android_content_7".equals(localObject2))
          {
            localObject2 = localUpsellInfo.getProductID();
            d.setText(localUpsellInfo.getCallToAction());
            d.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                LiveTvUpsellFragment.f(LiveTvUpsellFragment.this, localObject2);
              }
            });
          }
        }
      }
      c.setDisplayedChild(1);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = getResources().getDisplayMetrics();
    try
    {
      a = ((BaseFragmentCallBack)getParentFragment());
      paramBundle = new HashMap();
      paramBundle.put("events", "event89");
      paramBundle.put("pageTitle", "live tv");
      paramBundle.put("evar_6", "liveTV|upsell");
      paramBundle.put("evar_10", "livetv_upsell");
      paramBundle.put("pageView", Boolean.TRUE.toString());
      AnalyticsManager.a(getActivity(), Action.cl, paramBundle);
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = new LiveTvContentFlipper(getActivity());
    return c;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    a(LayoutInflater.from(paramView.getContext()), (ViewGroup)paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvUpsellFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */