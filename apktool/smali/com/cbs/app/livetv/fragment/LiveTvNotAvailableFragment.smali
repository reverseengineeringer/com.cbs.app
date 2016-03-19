.class public Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;,
        Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/util/DisplayMetrics;

.field private static c:I


# instance fields
.field private d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Ljava/text/SimpleDateFormat;

.field private i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private j:Lcom/cbs/app/view/model/MVPDConfig;

.field private k:I

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

.field private n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->f:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 324
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newInstance() called with: mvpdConfig = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c:I

    .line 154
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->k:I

    .line 155
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f03007d

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v0, v5}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 157
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1239
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1240
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v3}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 159
    const v0, 0x7f0f0201

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->l:Landroid/support/v7/widget/RecyclerView;

    .line 160
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c:I

    invoke-direct {v1, p0, v3, v4}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 161
    new-instance v0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    sget v1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c:I

    iget v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->k:I

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->m:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    .line 162
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->m:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 163
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V

    invoke-direct {v1, v3, v4}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 171
    const v0, 0x7f0f0203

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v1, 0x7f0f0202

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v3

    sget-object v4, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-eq v3, v4, :cond_0

    .line 180
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_0
    const v0, 0x7f0f0204

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    const v1, 0x7f0f0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 188
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    .line 183
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;Ljava/util/ArrayList;)V
    .locals 6

    .prologue
    .line 59
    .line 1244
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1245
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a()V

    .line 1246
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v2

    .line 1247
    const/4 v0, 0x0

    .line 1248
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 1249
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/cbs/app/livetv/model/UserStatusEnum;->c:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v2, v4, :cond_1

    .line 1251
    :cond_0
    iget-object v4, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    add-int/lit8 v1, v1, 0x1

    sget v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c:I

    if-eq v1, v0, :cond_2

    :cond_1
    move v0, v1

    move v1, v0

    .line 1256
    goto :goto_0

    .line 1257
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a(Ljava/util/Collection;)V

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c:I

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V
    .locals 3

    .prologue
    .line 59
    .line 2210
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x457

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 2214
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2215
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    const-string v1, "evar_10"

    const-string v2, "provider_unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cW:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 59
    return-void
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V
    .locals 3

    .prologue
    .line 3198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3199
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3200
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    const-string v1, "evar_10"

    const-string v2, "provider_unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cV:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 3204
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 3205
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e()V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->h:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 3

    .prologue
    .line 223
    const-string v0, "android_content_6"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 226
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->g:Landroid/content/Context;

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->h:Ljava/text/SimpleDateFormat;

    .line 126
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->n:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    .line 127
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b:Landroid/util/DisplayMetrics;

    .line 128
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->j:Lcom/cbs/app/view/model/MVPDConfig;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v1, "pageTitle"

    const-string v2, "live-tv|provider|local cbs unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "evar_10"

    const-string v2, "provider_unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cU:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public setListener(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 119
    return-void
.end method
