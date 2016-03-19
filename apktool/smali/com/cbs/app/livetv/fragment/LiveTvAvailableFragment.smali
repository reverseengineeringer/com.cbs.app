.class public Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Landroid/util/DisplayMetrics;


# instance fields
.field a:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

.field private e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private g:Z

.field private h:Landroid/widget/Button;

.field private i:Landroid/view/View;

.field private j:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->g:Z

    .line 273
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f030079

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 130
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 157
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v0, v5}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 160
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->j:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f0f01ef

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->j:Landroid/support/v7/widget/RecyclerView;

    .line 165
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->j:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->j:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 169
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    if-nez v0, :cond_1

    .line 170
    const v0, 0x7f030098

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v2, 0x7f080267

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v2, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0801e8

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    const v1, 0x7f0f0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->h:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    const v1, 0x7f0f020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    const v2, 0x7f0f026a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    const v3, 0x7f0f026b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->h:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a(Landroid/view/View;)V

    .line 194
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->getHeaderCount()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->g:Z

    if-nez v0, :cond_3

    .line 203
    iput-boolean v7, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->g:Z

    .line 204
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->g()V

    .line 209
    :goto_1
    return-void

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e()V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    invoke-virtual {v0, v7}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Ljava/lang/String;Lcom/cbs/app/livetv/model/UserStatusEnum;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    .line 1222
    if-eqz p1, :cond_3

    .line 1223
    sget-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->e:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne p2, v0, :cond_2

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1238
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1239
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell|available modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string v1, "evar_10"

    const-string v2, "livetv_available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cv:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 60
    return-void

    .line 1225
    :cond_2
    sget-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne p2, v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_1

    .line 1227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1228
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1229
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44f

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 1235
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "product id not found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    return-object v0
.end method

.method public static b()Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;-><init>()V

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)V
    .locals 3

    .prologue
    .line 60
    .line 1212
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x450

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1215
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell|available modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v1, "evar_10"

    const-string v2, "livetv_available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cw:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 271
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 4

    .prologue
    .line 254
    const-string v0, "android_content_7"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v1

    .line 257
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->h:Landroid/widget/Button;

    new-instance v3, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Ljava/lang/String;Lcom/cbs/app/livetv/model/UserStatusEnum;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate() called with: savedInstanceState = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c:Landroid/util/DisplayMetrics;

    .line 90
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 94
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v1, "events"

    const-string v2, "event85"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "pageTitle"

    const-string v2, "|live tv|live-tv avaialble|modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell|available modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "evar_10"

    const-string v2, "livetv_available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cu:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 108
    return-void

    .line 98
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
    .line 113
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->f:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 250
    return-void
.end method
