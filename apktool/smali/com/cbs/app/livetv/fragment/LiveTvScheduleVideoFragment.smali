.class public Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private d:Lcom/cbs/app/visualon/player/PlayerFragment;

.field private e:Lcom/google/android/gms/cast/d;

.field private f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->e:Lcom/google/android/gms/cast/d;

    .line 58
    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 59
    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;-><init>()V

    .line 64
    const-string v2, "EXTRA_CHANNEL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    const-string v2, "EXTRA_AFFILIATE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/visualon/player/PlayerFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->d:Lcom/cbs/app/visualon/player/PlayerFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->e:Lcom/google/android/gms/cast/d;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;)Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->d:Lcom/cbs/app/visualon/player/PlayerFragment;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
    .locals 6

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->e:Lcom/google/android/gms/cast/d;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 226
    const v1, 0x7f0f03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->e:Lcom/google/android/gms/cast/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->e:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 228
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/syncbak/SyncbakStream;Lcom/cbs/app/view/model/Affiliate;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v1, "pageTitle"

    const-string v2, "live tv|stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "evar_6"

    const-string v2, "liveTV|stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "evar_10"

    const-string v2, "livetv_stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v1

    .line 82
    const-string v2, "evar_32"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->dB:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 91
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f030081

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f03010f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setCustomView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 95
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 96
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 212
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 214
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 215
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 200
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 201
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g()V

    .line 203
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 105
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_AFFILIATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/Affiliate;

    .line 106
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 107
    new-instance v2, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 108
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v3, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)V

    invoke-virtual {v2, v3}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 192
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 193
    return-void
.end method
