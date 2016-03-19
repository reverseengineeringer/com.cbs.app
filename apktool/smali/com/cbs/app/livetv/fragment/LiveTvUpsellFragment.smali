.class public Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private b:Landroid/util/DisplayMetrics;

.field private c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const/16 v9, 0x21

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 121
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f030083

    invoke-virtual {p1, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 123
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v0, v7}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 124
    const v0, 0x7f0f0213

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    .line 125
    const v0, 0x7f0f0215

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->e()V

    .line 128
    const v1, 0x7f0f01f9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080076

    invoke-virtual {p0, v5}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 132
    const v5, 0x7f08021b

    invoke-virtual {p0, v5}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    new-instance v5, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$1;

    invoke-direct {v5, p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 140
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    const v0, 0x7f0f020d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f080267

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v3, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v7, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0801e8

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f0f020e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_1
    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    :cond_3
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_4
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->f()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V
    .locals 3

    .prologue
    .line 58
    .line 1288
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x44e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1290
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cn:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 2377
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Ljava/lang/String;)V

    .line 2378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2379
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cm:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 397
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 415
    return-void
.end method

.method public static b()Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;-><init>()V

    .line 75
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V
    .locals 3

    .prologue
    .line 58
    .line 1386
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x450

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1388
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->ct:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 3368
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Ljava/lang/String;)V

    .line 3369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3370
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3372
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cq:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V
    .locals 3

    .prologue
    .line 58
    .line 4359
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x452

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 4360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4361
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4362
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->co:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 5347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5348
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5349
    const-string v1, "ARG_TRACKING_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5350
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 5351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5352
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5353
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5354
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5355
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cp:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 6335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6336
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6337
    const-string v1, "ARG_TRACKING_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6338
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 6339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6340
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6341
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6342
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6343
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cr:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 7323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7324
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7325
    const-string v1, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7326
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 7327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7328
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7329
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7330
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7331
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cs:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    .line 8297
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8299
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 8315
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8316
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8317
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8318
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8319
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cn:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 58
    return-void

    .line 8307
    :cond_2
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8308
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_1

    .line 8309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8310
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8311
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8312
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44f

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 285
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_9

    .line 174
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_8

    .line 176
    const v1, 0x7f0f0217

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 177
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    const v1, 0x7f0f021b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 179
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const v1, 0x7f0f0220

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 181
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 183
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getActionTarget()Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v7, "android_content_1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    const v1, 0x7f0f0214

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    const v0, 0x7f080250

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$4;

    invoke-direct {v7, p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v7, "android_content_2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    const v1, 0x7f0f020f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;

    invoke-direct {v7, p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v1, 0x7f0f0226

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v7, "android_content_3"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 211
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v1, 0x7f0f0218

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v1, 0x7f0f021a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 214
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-static {v7, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 216
    const v1, 0x7f0f0219

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v1, 0x7f0f01a9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 218
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 225
    :cond_4
    const-string v7, "android_content_4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 227
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v1, 0x7f0f021c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const v1, 0x7f0f021e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 231
    const v1, 0x7f0f021d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const v1, 0x7f0f021f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 233
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;

    invoke-direct {v7, p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 240
    :cond_5
    const-string v7, "android_content_5"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 242
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const v1, 0x7f0f0221

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v1, 0x7f0f0223

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 246
    const v1, 0x7f0f0222

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v1, 0x7f0f0224

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 248
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$8;

    invoke-direct {v7, p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 255
    :cond_6
    const-string v7, "android_content_6"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 256
    const v1, 0x7f0f0225

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 257
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$9;

    invoke-direct {v7, p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$9;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v1, 0x7f0f0212

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v1, 0x7f0f0216

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 266
    :cond_7
    const-string v7, "android_content_7"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v7, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->d:Landroid/widget/Button;

    new-instance v7, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$10;

    invoke-direct {v7, p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$10;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 278
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 280
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b:Landroid/util/DisplayMetrics;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "events"

    const-string v2, "event89"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "pageTitle"

    const-string v2, "live tv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "evar_10"

    const-string v2, "livetv_upsell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cl:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 96
    return-void

    .line 86
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 104
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 111
    return-void
.end method
