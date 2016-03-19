.class public Lcom/cbs/app/view/fragments/HomeFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/HomeFragment$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;

.field private static n:Z

.field private static o:Landroid/net/Uri;

.field private static p:Landroid/net/Uri;


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private C:Z

.field private D:I

.field h:Z

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/cbs/app/androiddata/ResponseModelListener;

.field k:Lcom/cbs/app/androiddata/ResponseModelListener;

.field l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private final q:Z

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/lang/Object;

.field private t:[Lcom/cbs/app/view/model/VideoData;

.field private u:Lcom/google/android/gms/common/api/b;

.field private v:[Lcom/cbs/app/view/model/DeviceHome;

.field private w:Landroid/view/View;

.field private x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

.field private y:Landroid/support/v4/view/ViewPager;

.field private z:Lcom/cbs/app/widget/CbsCirclePageIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-class v0, Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/HomeFragment;->m:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/HomeFragment;->n:Z

    .line 68
    sput-object v1, Lcom/cbs/app/view/fragments/HomeFragment;->o:Landroid/net/Uri;

    .line 69
    sput-object v1, Lcom/cbs/app/view/fragments/HomeFragment;->p:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->q:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->s:Ljava/lang/Object;

    .line 74
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->h:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->i:Ljava/util/List;

    .line 76
    iput-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    .line 78
    iput-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    .line 79
    iput-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/HomeFragment$1;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 130
    iput-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 136
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/HomeFragment$2;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 207
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->C:Z

    .line 208
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/HomeFragment$3;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 228
    iput v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->D:I

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/HomeFragment;->setRetainInstance(Z)V

    .line 232
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/VideoData;)I
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v0

    .line 241
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v2

    .line 242
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 244
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 245
    const/4 v0, -0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeFragment;Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;)Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/ShowVideo;)Ljava/util/List;
    .locals 14

    .prologue
    .line 63
    .line 4531
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4532
    array-length v5, p1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, p1, v3

    .line 4533
    if-eqz v0, :cond_4

    .line 4534
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowVideo;->getShowId()Ljava/lang/Integer;

    move-result-object v1

    .line 4535
    if-eqz v1, :cond_4

    .line 4536
    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 4537
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4538
    :cond_0
    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/model/ShowVideo;->setShowTitle(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowVideo;->getVideoList()Ljava/util/List;

    move-result-object v6

    .line 4540
    if-eqz v6, :cond_4

    .line 4541
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 4542
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v8

    .line 4544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4545
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v12, 0x48190800

    sub-long/2addr v10, v12

    cmp-long v1, v8, v10

    if-lez v1, :cond_1

    .line 4547
    const/4 v2, 0x0

    .line 4548
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/VideoData;

    .line 4549
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-nez v1, :cond_2

    .line 4550
    const/4 v1, 0x1

    .line 4554
    :goto_2
    if-nez v1, :cond_1

    .line 4555
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/model/VideoData;->setFromMyCBS(Z)V

    .line 4556
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4561
    :cond_3
    invoke-static {v6}, Lcom/cbs/app/view/utils/VideoUtil;->a(Ljava/util/List;)Ljava/util/List;

    .line 4532
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 63
    :cond_5
    return-object v4

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/DeviceHome;)[Lcom/cbs/app/view/model/DeviceHome;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/DeviceHome;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/HomeFragment;)Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/HomeFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/cbs/app/view/fragments/HomeFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/HomeFragment;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->C:Z

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/fragments/HomeFragment;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 511
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 512
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 513
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    .line 688
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 689
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->h:Z

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 692
    new-instance v1, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 694
    new-instance v1, Lcom/cbs/app/listener/HomeVideoListItemClickListener;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 2715
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v4

    .line 694
    const-string v5, "HomeFragment"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cbs/app/listener/HomeVideoListItemClickListener;-><init>([Lcom/cbs/app/view/model/VideoData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 697
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    const v1, 0x7f0f01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 701
    new-instance v1, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V

    .line 702
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setNumColumns(I)V

    .line 707
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 708
    new-instance v0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 3715
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v4

    .line 708
    invoke-direct {v0, v2, v3, v4}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;-><init>([Lcom/cbs/app/view/model/VideoData;Landroid/content/Context;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1, v0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setOnGridClickListener(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    goto :goto_0

    .line 705
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setNumColumns(I)V

    goto :goto_1
.end method

.method private j()V
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 725
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 726
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 727
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 731
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->z:Lcom/cbs/app/widget/CbsCirclePageIndicator;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 732
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->z:Lcom/cbs/app/widget/CbsCirclePageIndicator;

    new-instance v1, Lcom/cbs/app/view/fragments/HomeFragment$6;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/HomeFragment$6;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 754
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/cbs/app/view/fragments/HomeFragment$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/HomeFragment$7;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 775
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment$8;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/HomeFragment$8;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    .line 787
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 611
    .line 2572
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    new-instance v2, Lcom/cbs/app/view/fragments/HomeFragment$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/HomeFragment$4;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    .line 613
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    .line 615
    rsub-int/lit8 v0, v0, 0x18

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 617
    new-instance v2, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 618
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "617"

    new-instance v5, Lcom/cbs/app/view/fragments/HomeFragment$a;

    invoke-direct {v5, p0, v1}, Lcom/cbs/app/view/fragments/HomeFragment$a;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;B)V

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 620
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "618"

    new-instance v5, Lcom/cbs/app/view/fragments/HomeFragment$a;

    invoke-direct {v5, p0, v1}, Lcom/cbs/app/view/fragments/HomeFragment$a;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;B)V

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 627
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 612
    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 624
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->i()V

    .line 625
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    goto :goto_1
.end method

.method public final a(ILcom/cbs/app/view/model/DeviceHome;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 791
    invoke-virtual {p2}, Lcom/cbs/app/view/model/DeviceHome;->getOptional_id()Ljava/lang/String;

    move-result-object v5

    .line 792
    const-wide/16 v0, 0x0

    .line 794
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 797
    :goto_0
    invoke-virtual {p2}, Lcom/cbs/app/view/model/DeviceHome;->getAction()Ljava/util/List;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 800
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 802
    :goto_1
    invoke-virtual {p2}, Lcom/cbs/app/view/model/DeviceHome;->getTarget()Ljava/util/List;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 805
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 807
    :cond_0
    invoke-virtual {p2}, Lcom/cbs/app/view/model/DeviceHome;->getPid()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 810
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 812
    if-eqz v1, :cond_1

    .line 813
    const-string v6, "action"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_1
    const-string v1, "appState"

    const-string v6, "cbscom:Homescreen"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    if-eqz v4, :cond_2

    .line 818
    const-string v1, "target"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_2
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    if-eqz v5, :cond_3

    .line 823
    const-string v1, "optionalId"

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_3
    const-string v1, "events"

    const-string v4, "event19"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    if-eqz v0, :cond_4

    .line 828
    const-string v1, "cid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :cond_4
    if-eqz v2, :cond_5

    .line 831
    const-string v0, "ShowTitle"

    iget-object v1, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v0, "showId"

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cbscom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    const-string v1, "evar_63"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v1, "prop_63"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v1, Lcom/cbs/app/analytics/Action;->av:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 840
    return-void

    :catch_0
    move-exception v2

    move-wide v2, v0

    goto/16 :goto_0

    :cond_6
    move-object v1, v4

    goto/16 :goto_1
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    .line 631
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 633
    :try_start_0
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 635
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    :cond_0
    iget v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->D:I

    .line 642
    iget v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 644
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->i:Ljava/util/List;

    new-instance v1, Lcom/cbs/app/view/fragments/HomeFragment$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/HomeFragment$5;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 665
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_1

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    .line 670
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 671
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x18

    if-ge v4, v5, :cond_2

    .line 672
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 668
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 678
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    .line 679
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 680
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->i()V

    .line 681
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 683
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/FavoriteShow;

    .line 520
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    iget-wide v4, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_1
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 526
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/HomeFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/cbs/app/service/ShowService;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 527
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->j()V

    .line 845
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->h()V

    .line 846
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 847
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 376
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 256
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 257
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 492
    sget-boolean v0, Lcom/cbs/app/view/fragments/HomeFragment;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->h:Z

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->i()V

    .line 494
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 496
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v4, 0x7f0f025f

    const v9, 0x7f030064

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 271
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->c:Z

    .line 273
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->c()V

    .line 278
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    .line 1328
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    move v0, v2

    .line 278
    :goto_0
    if-eqz v0, :cond_3

    .line 279
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->h:Z

    .line 280
    const v0, 0x7f03006a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    .line 281
    const v0, 0x7f030099

    invoke-virtual {p1, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    const v3, 0x7f0f01b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 286
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 287
    int-to-double v4, v1

    const-wide/high16 v6, 0x4084000000000000L    # 640.0

    div-double/2addr v4, v6

    .line 288
    const-wide/high16 v6, 0x406e000000000000L    # 240.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 291
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    long-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 293
    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 296
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 301
    :cond_1
    new-instance v1, Lcom/cbs/app/listener/HomeVideoListItemClickListener;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment;->t:[Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1715
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v5

    .line 301
    const-string v6, "HomeFragment"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/cbs/app/listener/HomeVideoListItemClickListener;-><init>([Lcom/cbs/app/view/model/VideoData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 307
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 322
    :cond_2
    :goto_1
    new-instance v0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-array v3, v2, [Lcom/cbs/app/view/model/DeviceHome;

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Lcom/cbs/app/view/model/DeviceHome;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    .line 324
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 325
    if-eqz v4, :cond_6

    .line 327
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "homeMarquee"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 328
    if-eqz v5, :cond_5

    .line 330
    array-length v0, v5

    new-array v0, v0, [Lcom/cbs/app/view/model/DeviceHome;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    .line 332
    array-length v6, v5

    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v0, v5, v3

    .line 333
    if-eqz v0, :cond_8

    .line 334
    iget-object v7, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    check-cast v0, Lcom/cbs/app/view/model/DeviceHome;

    aput-object v0, v7, v1

    .line 341
    add-int/lit8 v0, v1, 0x1

    .line 332
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    .line 309
    :cond_3
    const v0, 0x7f03006b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    .line 310
    const v0, 0x7f03009a

    invoke-virtual {p1, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    .line 312
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    const v3, 0x7f0f01b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 315
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 318
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_1

    .line 344
    :cond_4
    new-instance v0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment;->v:[Lcom/cbs/app/view/model/DeviceHome;

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Lcom/cbs/app/view/model/DeviceHome;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    .line 347
    :cond_5
    const-string v0, "primetime"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 349
    if-eqz v4, :cond_6

    .line 350
    array-length v0, v4

    new-array v0, v0, [Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 352
    array-length v5, v4

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_6

    aget-object v0, v4, v3

    .line 353
    if-eqz v0, :cond_7

    .line 354
    iget-object v6, p0, Lcom/cbs/app/view/fragments/HomeFragment;->B:[Lcom/cbs/app/view/fragments/show/model/ShowItem;

    add-int/lit8 v1, v2, 0x1

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    aput-object v0, v6, v2

    move v0, v1

    .line 352
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    const v1, 0x7f0f026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/widget/CbsCirclePageIndicator;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->z:Lcom/cbs/app/widget/CbsCirclePageIndicator;

    .line 363
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->j()V

    .line 365
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->h()V

    .line 366
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 368
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->u:Lcom/google/android/gms/common/api/b;

    .line 369
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    return-object v0

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 478
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 471
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 472
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 473
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 483
    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->w:Landroid/view/View;

    .line 484
    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->y:Landroid/support/v4/view/ViewPager;

    .line 485
    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->x:Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    .line 486
    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->z:Lcom/cbs/app/widget/CbsCirclePageIndicator;

    .line 487
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 488
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->C:Z

    .line 449
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 415
    sget-object v0, Lcom/cbs/app/analytics/Action;->d:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 416
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->C:Z

    .line 420
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 428
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2438
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2439
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_2

    .line 2440
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2441
    const-wide/16 v2, -0x1

    const-string v1, "fragment_cbs_home"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 435
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 380
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->u:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/HomeFragment;->o:Landroid/net/Uri;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HomeFragment....APP_URI : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cbs/app/view/fragments/HomeFragment;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/HomeFragment;->p:Landroid/net/Uri;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeFragment...WEB_URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/fragments/HomeFragment;->p:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->u:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/cbs/app/view/fragments/HomeFragment;->o:Landroid/net/Uri;

    const-string v3, "CBS TV Network Primetime, Daytime, Late Night and Classic Television Shows"

    sget-object v4, Lcom/cbs/app/view/fragments/HomeFragment;->p:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 457
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 458
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->d()V

    .line 461
    :try_start_0
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment;->u:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/cbs/app/view/fragments/HomeFragment;->o:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 462
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment;->u:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
