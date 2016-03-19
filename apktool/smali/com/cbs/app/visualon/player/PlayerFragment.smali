.class public Lcom/cbs/app/visualon/player/PlayerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/net/Uri;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/support/v7/app/MediaRouteButton;

.field private f:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

.field private g:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

.field private i:Lcom/google/android/gms/common/api/b;

.field private j:Lcom/cbs/app/view/model/VideoData;

.field private k:Lcom/cbs/app/view/model/Affiliate;

.field private l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

.field private m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/widget/RelativeLayout;

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Landroid/view/SurfaceHolder$Callback;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/PlayerFragment;->a:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/visualon/player/PlayerFragment;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Lcom/cbs/app/visualon/player/PlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$1;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->f:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 96
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 98
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    .line 99
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->k:Lcom/cbs/app/view/model/Affiliate;

    .line 100
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    .line 101
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 102
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->n:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->o:Ljava/lang/String;

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    .line 105
    iput v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    .line 106
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->r:Z

    .line 107
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->s:Z

    .line 110
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->v:Z

    .line 111
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    .line 112
    new-instance v0, Lcom/cbs/app/visualon/player/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$2;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->x:Landroid/view/SurfaceHolder$Callback;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->y:Z

    .line 152
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->z:Z

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/visualon/player/PlayerFragment;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/view/model/syncbak/SyncbakStream;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    return-object p1
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/visualon/player/PlayerFragment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;-><init>()V

    .line 157
    const-string v2, "syncbakChannel"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v2, "syncbakStream"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-string v2, "syncbakAffiliate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    const-string v2, "showName"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "episodeName"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cbs/app/visualon/player/PlayerFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/visualon/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->e:Landroid/support/v7/app/MediaRouteButton;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 562
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->u:Z

    if-nez v0, :cond_2

    .line 564
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->u:Z

    .line 565
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v0, v1, :cond_0

    .line 568
    iput-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->s:Z

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wasPlaying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 571
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v0, :cond_3

    .line 573
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->r:Z

    .line 574
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->r:Z

    if-eqz v0, :cond_1

    .line 575
    invoke-static {v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Z)V

    .line 578
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 579
    iput-boolean v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->z:Z

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 596
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 597
    if-nez v0, :cond_2

    .line 598
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 600
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 601
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Landroid/content/Context;)V

    .line 609
    :cond_2
    :goto_1
    return-void

    .line 582
    :cond_3
    iput v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    .line 583
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    .line 584
    iget v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeMode(I)V

    .line 585
    iget-wide v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeTime(J)V

    .line 591
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->s()V

    .line 593
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->u()V

    goto :goto_0

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 664
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 666
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 668
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_0

    .line 672
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    if-eqz v1, :cond_0

    .line 674
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 675
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v5}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V

    .line 687
    :cond_1
    :goto_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 693
    :cond_3
    return-void

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->k:Lcom/cbs/app/view/model/Affiliate;

    iget-object v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->o:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/cbs/app/visualon/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/visualon/player/PlayerFragment;)V
    .locals 2

    .prologue
    .line 48
    .line 2505
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_4

    .line 2507
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2510
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 2512
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 2526
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->e()V

    .line 2527
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->d()V

    .line 2529
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->s:Z

    if-eqz v0, :cond_0

    .line 2532
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->w()V

    .line 2533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->s:Z

    .line 2555
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2556
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    return-void

    .line 2541
    :cond_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->l()V

    .line 2542
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->m()V

    goto :goto_0

    .line 2544
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v0, :cond_0

    .line 2550
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->l()V

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play by channel"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V

    .line 2553
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->m()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/cbs/app/visualon/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/visualon/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->v:Z

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/visualon/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->c()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    .line 171
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 441
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(I)V

    .line 442
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    const-string v0, "videoData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 179
    instance-of v2, v0, Lcom/cbs/app/view/model/VideoData;

    if-eqz v2, :cond_0

    .line 180
    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    .line 182
    :cond_0
    const-string v0, "EXTRA_DISABLE_FULLSCREEN_BUTTON"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->d:Z

    .line 183
    const-string v0, "syncbakChannel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 184
    const-string v0, "syncbakStream"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    .line 185
    const-string v0, "syncbakAffiliate"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->k:Lcom/cbs/app/view/model/Affiliate;

    .line 187
    const-string v0, "showName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->n:Ljava/lang/String;

    .line 188
    const-string v0, "episodeName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->o:Ljava/lang/String;

    .line 189
    const-string v0, "resumeTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    .line 190
    const-string v0, "resumeMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "oncreate resumeTime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resumeMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, "pid"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    if-eqz v1, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 197
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    .line 198
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->k:Lcom/cbs/app/view/model/Affiliate;

    .line 212
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->i:Lcom/google/android/gms/common/api/b;

    .line 213
    return-void

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v1, :cond_3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    goto :goto_0

    .line 203
    :cond_3
    if-eqz v0, :cond_1

    .line 205
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    .line 206
    iput-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 219
    const v0, 0x7f030030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    .line 221
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->g:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 223
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->g:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$3;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 419
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->f:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 427
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 403
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->z:Z

    .line 409
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 433
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 383
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b()V

    .line 385
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v2, 0x80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 289
    iput-boolean v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->u:Z

    .line 292
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->z:Z

    if-nez v0, :cond_3

    .line 2449
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->c:I

    .line 2452
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2454
    iget v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 2455
    iget v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeMode(I)V

    .line 2456
    iget-wide v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    invoke-static {v2, v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeTime(J)V

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resumeTime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resumeMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2464
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_7

    .line 2465
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0, v2, v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;Lcom/cbs/app/view/model/VideoData;)V

    .line 2475
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f00f8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 2476
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 2478
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->h:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "View getWidth = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , height"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2489
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->d:Z

    if-eqz v0, :cond_2

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0106

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2492
    :cond_2
    iput-boolean v6, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->z:Z

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/google/android/gms/cast/j;)V

    .line 309
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->A()V

    .line 312
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 313
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 317
    :goto_2
    if-nez v0, :cond_9

    .line 319
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v0, :cond_8

    .line 326
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->y:Z

    if-nez v0, :cond_8

    .line 334
    iput-boolean v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    .line 2499
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->g:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 343
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "surfaceCreated: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dataIsLoaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 345
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->v:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    if-eqz v0, :cond_4

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cbs/app/visualon/player/PlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$4;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->r:Z

    if-eqz v0, :cond_5

    .line 367
    invoke-static {v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Z)V

    .line 376
    :cond_5
    :goto_4
    iput-boolean v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->y:Z

    .line 378
    return-void

    .line 2460
    :cond_6
    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeMode(I)V

    .line 2461
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->setResumeTime(J)V

    goto/16 :goto_0

    .line 2466
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setting up "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->t:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->m:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v4, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->l:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 339
    :cond_8
    iput-boolean v6, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->w:Z

    goto :goto_3

    .line 371
    :cond_9
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->c()V

    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is Player active : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->i:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 268
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    const-string v1, "Videos"

    invoke-static {v3, v0, v1}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    const-string v2, "Videos"

    invoke-static {v3, v1, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 272
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/PlayerFragment;->b:Landroid/net/Uri;

    .line 273
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->j:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - CBS.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    sget-object v2, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->i:Lcom/google/android/gms/common/api/b;

    sget-object v4, Lcom/cbs/app/visualon/player/PlayerFragment;->b:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 281
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 391
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b()V

    .line 392
    sget-object v0, Lcom/cbs/app/visualon/player/PlayerFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->i:Lcom/google/android/gms/common/api/b;

    sget-object v2, Lcom/cbs/app/visualon/player/PlayerFragment;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->i:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    .line 396
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 252
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 253
    const v0, 0x7f0f00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteButton;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->e:Landroid/support/v7/app/MediaRouteButton;

    .line 1612
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    .line 1614
    iget-object v3, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->e:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 1615
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 1616
    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment$5;

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/visualon/player/PlayerFragment$5;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment;Z)V

    iput-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1653
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 1654
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->e:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/support/v7/app/MediaRouteButton;)V

    .line 1655
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g(I)V

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->f:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 256
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->k()V

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 1614
    goto :goto_0

    .line 1657
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment;->e:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    goto :goto_1
.end method
