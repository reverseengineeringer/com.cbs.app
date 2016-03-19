.class public Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:J

.field private c:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

.field private f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

.field private g:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

.field private h:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

.field private i:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field private j:Lcom/cbs/app/view/model/Affiliate;

.field private k:Lcom/cbs/app/livetv/model/LiveTvChannel;

.field private l:Lcom/cbs/app/visualon/player/PlayerRect;

.field private final m:Landroid/os/Handler;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b:J

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->m:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;-><init>()V

    .line 63
    const-string v2, "EXTRA_CHANNEL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "EXTRA_AFFILIATE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/livetv/model/LiveTvChannel;)Lcom/cbs/app/livetv/model/LiveTvChannel;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->k:Lcom/cbs/app/livetv/model/LiveTvChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/visualon/player/FullScreenButtonListener;)Lcom/cbs/app/visualon/player/FullScreenButtonListener;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->h:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    return-object p1
.end method

.method static synthetic a(II)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 6

    .prologue
    .line 37
    .line 1313
    new-instance v0, Lcom/cbs/app/visualon/player/PlayerRect;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/PlayerRect;-><init>()V

    .line 1314
    iput p0, v0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 1315
    iget v1, v0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    int-to-double v2, v1

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 1316
    iput v1, v0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    .line 1317
    iget v2, v0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    if-le v2, p1, :cond_0

    .line 1318
    iput p1, v0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    .line 1319
    iget v2, v0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    iget v3, v0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    mul-int/2addr v2, v3

    div-int v1, v2, v1

    iput v1, v0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 37
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->l:Lcom/cbs/app/visualon/player/PlayerRect;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/visualon/player/PlayerRect;)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->l:Lcom/cbs/app/visualon/player/PlayerRect;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->n:Z

    .line 326
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->m:Landroid/os/Handler;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)V

    iget-wide v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method

.method private a(IZ)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x7f0f0209

    const v8, 0x7f0f0207

    const/4 v7, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {v0, v8}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f0f0208

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 98
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {v0, v9}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 99
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    if-ne p1, v11, :cond_4

    .line 109
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 111
    const/high16 v6, 0x3f200000    # 0.625f

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 112
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sub-float v6, v10, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(I)Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    .line 118
    :cond_1
    invoke-static {v11}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(I)Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    .line 120
    const-string v0, "FRAGMENT_TAG_PROGRAMS"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    const-string v6, "FRAGMENT_TAG_PROGRAMS"

    invoke-virtual {v0, v8, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->i:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->j:Lcom/cbs/app/view/model/Affiliate;

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    .line 139
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f0208

    iget-object v6, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->g:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 141
    :cond_3
    if-eqz p2, :cond_5

    .line 142
    invoke-direct {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Landroid/view/View;)V

    .line 190
    :goto_2
    if-eqz p2, :cond_7

    .line 191
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 192
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->k:Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    goto/16 :goto_0

    .line 124
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/high16 v6, 0x3ec00000    # 0.375f

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sub-float v6, v10, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-static {v7}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(I)Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    .line 132
    const-string v0, "FRAGMENT_TAG_PROGRAMS"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    const-string v6, "FRAGMENT_TAG_PROGRAMS"

    invoke-virtual {v0, v9, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 187
    :cond_6
    invoke-static {v7}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(I)Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    .line 188
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0, v8, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 194
    :cond_7
    invoke-direct {p0, v7}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Z)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;I)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 37
    .line 1294
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1295
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1296
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1297
    if-eqz v0, :cond_0

    .line 1298
    if-eqz p1, :cond_1

    .line 1300
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1301
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1306
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V
    .locals 2

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    .line 219
    :cond_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 206
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 234
    :cond_0
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 235
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->i:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->j:Lcom/cbs/app/view/model/Affiliate;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;I)V

    .line 260
    if-nez p1, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b()V

    .line 262
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a()V

    .line 264
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/FullScreenButtonListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->h:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/livetv/model/LiveTvChannel;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->k:Lcom/cbs/app/livetv/model/LiveTvChannel;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b:J

    return-wide v0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(IZ)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 73
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f03007f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->h:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->h:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 274
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 275
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 344
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->n:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b()V

    .line 347
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 352
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->n:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a()V

    .line 355
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->i:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 81
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_AFFILIATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->j:Lcom/cbs/app/view/model/Affiliate;

    .line 82
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(IZ)V

    .line 83
    return-void
.end method
