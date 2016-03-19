.class public Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;
.super Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;,
        Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;

.field private static j:Z

.field private static k:I

.field private static l:Landroid/net/Uri;


# instance fields
.field private A:I

.field private B:Landroid/widget/ListView;

.field private C:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private D:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private E:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

.field private F:I

.field h:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View;

.field private p:Lcom/cbs/app/adapter/VideoAdapter;

.field private q:[Lcom/cbs/app/view/model/VideoData;

.field private r:Lcom/google/android/gms/common/api/b;

.field private s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private t:Lcom/cbs/app/view/model/Show;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/widget/PopupWindow;

.field private y:Landroid/widget/TextView;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->i:Ljava/lang/String;

    .line 76
    sput-boolean v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j:Z

    .line 77
    sput v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->k:I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;-><init>()V

    .line 80
    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    .line 81
    iput-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    .line 84
    new-array v0, v1, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    .line 87
    iput-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    .line 88
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->u:Z

    .line 89
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->v:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->z:F

    .line 94
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    .line 97
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->C:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 142
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->D:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 214
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->E:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

    .line 221
    const/4 v0, -0x2

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->F:I

    .line 865
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;F)F
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->z:F

    return p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/support/v7/app/AppCompatActivity;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/model/VideoData;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Lcom/cbs/app/view/model/VideoData;IJ)V
    .locals 3

    .prologue
    .line 66
    .line 2624
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2626
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2627
    if-eqz v0, :cond_0

    .line 2628
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2629
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 2630
    if-eqz v0, :cond_0

    .line 2631
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2632
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/model/VideoData;IJ)V

    :cond_0
    :goto_0
    return-void

    .line 2634
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/model/VideoData;IJ)V

    goto :goto_0
.end method

.method private a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 3

    .prologue
    .line 592
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    :cond_0
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$7;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    .line 615
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-static {v1, p1, v2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    .line 620
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->w:Z

    return p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    return-object p1
.end method

.method static a([Lcom/cbs/app/view/model/VideoData;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 844
    array-length v0, p0

    .line 845
    array-length v1, p1

    .line 846
    add-int v2, v0, v1

    new-array v2, v2, [Lcom/cbs/app/view/model/VideoData;

    .line 847
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    return-object v2
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private d(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 351
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 352
    :cond_0
    new-instance v0, Lcom/cbs/app/adapter/VideoAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v0, v1, v2, v3}, Lcom/cbs/app/adapter/VideoAdapter;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;[Lcom/cbs/app/view/model/VideoData;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    .line 353
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    const v1, 0x7f0f03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    .line 354
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->h:Landroid/graphics/drawable/Drawable;

    .line 355
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$a;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$a;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/VideoAdapter;->setOnGridClickListener(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/adapter/VideoAdapter;->setNumColumns(I)V

    .line 357
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 362
    :cond_1
    if-lez p1, :cond_3

    .line 363
    if-le p1, v6, :cond_2

    .line 364
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/adapter/VideoAdapter;->setNumColumns(I)V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 383
    return-void

    .line 370
    :cond_4
    if-lez p1, :cond_5

    .line 371
    if-ne p1, v6, :cond_6

    .line 372
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/adapter/VideoAdapter;->setNumColumns(I)V

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/VideoAdapter;->setVideos([Lcom/cbs/app/view/model/VideoData;)V

    goto :goto_0

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)[Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    return v0
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->w:Z

    return v0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->z:F

    return v0
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic n(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x2

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->F:I

    return v0
.end method

.method static synthetic o(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic p(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic q(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    return v0
.end method

.method static synthetic s(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public static setDisplayVideoListcount(I)V
    .locals 0

    .prologue
    .line 224
    sput p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->k:I

    .line 225
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const v7, 0x7f0f03ba

    const v6, 0x7f0f0127

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 514
    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setDisplayVideoListcount(I)V

    .line 516
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    array-length v3, v0

    .line 521
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    if-nez v0, :cond_6

    move v0, v1

    .line 526
    :goto_0
    invoke-direct {p0, v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(I)V

    .line 531
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v4, v0}, Lcom/cbs/app/adapter/VideoAdapter;->setIsLatestAvailableSelected(Z)V

    .line 532
    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setDisplayVideoListcount(I)V

    .line 535
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    if-le v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1e

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/VideoAdapter;->setNumColumns(I)V

    .line 550
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_3
    :goto_2
    return-void

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/VideoAdapter;->setNumColumns(I)V

    goto :goto_1

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 653
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    .line 654
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setSeasonSelection(I)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incrementBatchNumber "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionArg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 853
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    .line 854
    invoke-virtual {p0, p2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setSeasonSelection(I)V

    .line 855
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 748
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 751
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 752
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b()V

    .line 757
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/16 v10, 0x33

    const/4 v7, -0x1

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    const/4 v6, 0x0

    .line 438
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    const v1, 0x7f0f03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 443
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 445
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(I)V

    .line 446
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    new-instance v2, Lcom/cbs/app/listener/VideoListViewOnScrollListener;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-direct {v2, v3, v4}, Lcom/cbs/app/listener/VideoListViewOnScrollListener;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 447
    sget v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->k:I

    if-lez v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 450
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 452
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 455
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 456
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-direct {v0, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 461
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 462
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 463
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    :cond_3
    iput-boolean v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->u:Z

    .line 499
    :cond_4
    :goto_0
    return-void

    .line 469
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->d(I)V

    .line 470
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    new-instance v2, Lcom/cbs/app/listener/VideoListViewOnScrollListener;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-direct {v2, v3, v4}, Lcom/cbs/app/listener/VideoListViewOnScrollListener;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 471
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 472
    :cond_7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 474
    iget-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->u:Z

    if-eqz v2, :cond_9

    .line 475
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    :goto_1
    iput-boolean v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->u:Z

    .line 480
    if-eqz v0, :cond_8

    .line 481
    const v2, 0x7f0201ec

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 482
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 490
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 491
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 492
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 477
    :cond_9
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v2, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public final c(I)V
    .locals 6

    .prologue
    .line 561
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->F:I

    if-eq p1, v0, :cond_7

    .line 562
    iput p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->F:I

    .line 563
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/adapter/VideoAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 564
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/adapter/VideoAdapter;->a(I)Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    .line 565
    if-eqz v1, :cond_6

    .line 566
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 567
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Preferences;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    invoke-static {v1}, Lcom/cbs/app/view/NielsenDialogHelper;->setVideoWeWantedToSee(Lcom/cbs/app/view/model/VideoData;)V

    .line 569
    invoke-static {v2}, Lcom/cbs/app/view/NielsenDialogHelper;->setShowWeWantToSee(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 570
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->E:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

    invoke-static {v0, v3}, Lcom/cbs/app/view/NielsenDialogHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;)V

    .line 575
    :goto_0
    if-eqz v2, :cond_6

    .line 1781
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1783
    const-string v0, "appState"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cbscom:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v5}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    const-string v0, "ShowTitle"

    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string v0, "showId"

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    const-string v0, "EpisodeTitle"

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1788
    const-string v0, "VideoID"

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_0
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1791
    const-string v0, "ContentID"

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    :cond_1
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v0

    .line 1794
    if-eqz v0, :cond_2

    const-string v4, "subscriber"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1795
    const-string v0, "Regular"

    .line 1796
    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    const-string v5, "CLASSICS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1797
    const-string v0, "Classics"

    .line 1799
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";Season "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";episode button"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    const-string v4, "evar_18"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    const-string v4, "prop_18"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1805
    const-string v4, "evar_31"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    const-string v4, "prop_31"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    const-string v2, "evar_63"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    const-string v2, "prop_63"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    const-string v2, "evar_64"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    const-string v2, "prop_64"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1815
    const-string v0, "evar_6"

    const-string v1, "CBS svod"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    const-string v0, "prop_6"

    const-string v1, "CBS svod"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v1, Lcom/cbs/app/analytics/Action;->aB:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 580
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 581
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$6;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$6;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    :cond_7
    return-void

    .line 572
    :cond_8
    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/model/VideoData;)V

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 762
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 765
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 766
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d()V

    .line 771
    :cond_0
    return-void
.end method

.method public getPreviousBatchSize()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 509
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    const v0, 0x7f03010b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    .line 249
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 251
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/model/Show;

    if-eqz v2, :cond_0

    .line 253
    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    .line 256
    :cond_0
    const-string v0, "videos"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    instance-of v2, v0, [Lcom/cbs/app/view/model/VideoData;

    if-eqz v2, :cond_1

    .line 258
    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->a([Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q:[Lcom/cbs/app/view/model/VideoData;

    .line 266
    :cond_2
    sput-boolean v3, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j:Z

    .line 267
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Classics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    sput-boolean v4, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j:Z

    .line 273
    :cond_3
    const-string v0, "orderedShowSeasonNumbers"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    .line 275
    const-string v0, "selection"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    .line 278
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-string v1, "previousSeasonSelection"

    invoke-static {v0, v1, v3}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 279
    if-eqz v0, :cond_4

    .line 280
    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seasonNumbers size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const v0, 0x7f03003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 286
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    const v2, 0x7f0f03b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    .line 287
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setSeasonSelection(I)V

    .line 288
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    .line 289
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 290
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 306
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r:Lcom/google/android/gms/common/api/b;

    .line 341
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-super {p0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->onDestroyView()V

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 235
    :cond_0
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->p:Lcom/cbs/app/adapter/VideoAdapter;

    .line 236
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->B:Landroid/widget/ListView;

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->onResume()V

    .line 348
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 388
    invoke-super {p0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->onStart()V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 397
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 401
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l:Landroid/net/Uri;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "APP_URI : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WEB_URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - CBS.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    sget-object v2, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r:Lcom/google/android/gms/common/api/b;

    sget-object v4, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 426
    invoke-super {p0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->onStop()V

    .line 428
    :try_start_0
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r:Lcom/google/android/gms/common/api/b;

    sget-object v2, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 429
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSeasonSelection(I)V
    .locals 7

    .prologue
    const/16 v4, 0x8ae

    const/16 v6, 0x457

    .line 671
    iput p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    .line 672
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 674
    if-ne v0, v6, :cond_7

    .line 675
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    const-string v1, "Clips"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_6

    .line 683
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 684
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_1

    .line 686
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 687
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 688
    if-eqz v0, :cond_1

    .line 689
    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setSelection(I)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 693
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 694
    sget-boolean v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j:Z

    if-eqz v1, :cond_b

    .line 695
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 697
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 699
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->b()V

    .line 700
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 701
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    if-eqz v2, :cond_2

    .line 702
    if-ne v3, v6, :cond_9

    .line 704
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->C:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/cbs/app/service/ShowService;->c(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 713
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->v:Z

    if-eqz v0, :cond_5

    .line 714
    sget-object v0, Lcom/cbs/app/analytics/Action;->t:Lcom/cbs/app/analytics/Action;

    .line 715
    if-ne v3, v6, :cond_3

    .line 716
    sget-object v0, Lcom/cbs/app/analytics/Action;->u:Lcom/cbs/app/analytics/Action;

    .line 720
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 721
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v4}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v2, :cond_4

    .line 723
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_4
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v2, "pageView"

    const-string v3, "anything"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 736
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->v:Z

    .line 738
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 740
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->b(I)V

    .line 743
    :cond_6
    return-void

    .line 676
    :cond_7
    if-ne v0, v4, :cond_8

    .line 677
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    const-string v1, "Full Episodes"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 679
    :cond_8
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->y:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Season "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 705
    :cond_9
    if-ne v3, v4, :cond_a

    .line 707
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->D:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/cbs/app/service/ShowService;->b(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    goto/16 :goto_2

    .line 708
    :cond_a
    if-ge p1, v1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->t:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->A:I

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->D:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/lang/String;IILcom/cbs/app/androiddata/ResponseModelListener;)V

    goto/16 :goto_2

    :cond_b
    move v1, v0

    goto/16 :goto_1
.end method

.method public setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 242
    return-void
.end method
