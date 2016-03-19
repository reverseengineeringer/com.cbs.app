.class public Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/util/DisplayMetrics;

.field private static c:I


# instance fields
.field private d:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

.field private h:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakChannel;",
            "Lcom/cbs/app/view/model/Affiliate;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private l:Landroid/content/Context;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 174
    return-void
.end method

.method public static a()Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;-><init>()V

    .line 55
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;Ljava/lang/String;)Lcom/cbs/app/view/model/syncbak/SyncbakChannel;
    .locals 3

    .prologue
    .line 36
    .line 1166
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1167
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    :goto_0
    return-object v0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    .line 36
    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->j:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f03007a

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 128
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c:I

    .line 129
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v1, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 130
    const v1, 0x7f0f01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->f:Landroid/support/v7/widget/RecyclerView;

    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->l:Landroid/content/Context;

    sget v3, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c:I

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 132
    new-instance v0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    sget v1, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c:I

    iget v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->i:I

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->h:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    .line 133
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->h:Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 134
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 147
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->m:Z

    if-nez v0, :cond_0

    .line 148
    iput-boolean v5, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->m:Z

    .line 149
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->h()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iput-boolean v4, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->m:Z

    .line 153
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    invoke-virtual {v0, v5}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->b:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c:I

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->l:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->b:Landroid/util/DisplayMetrics;

    .line 62
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->l:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    .line 64
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->i:I

    .line 65
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 66
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 106
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

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->k:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->e:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 161
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 163
    return-void
.end method
