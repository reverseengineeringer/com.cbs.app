.class public Lcom/cbs/app/visualon/player/PlayerActivityV2;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a:Z

    .line 119
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->c()V

    .line 120
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;)V

    .line 121
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h()V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->finish()V

    .line 102
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 103
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->C()V

    .line 107
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->setContentView(I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a:Z

    .line 1049
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1056
    new-instance v2, Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {v2}, Lcom/cbs/app/visualon/player/PlayerFragment;-><init>()V

    .line 1057
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1058
    const v0, 0x7f0f00a5

    const-string v3, "videoplayer_fragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1059
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 132
    sget-object v1, Lcom/cbs/app/visualon/player/PlayerActivityV2;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key click is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 135
    :cond_0
    sget-object v1, Lcom/cbs/app/visualon/player/PlayerActivityV2;->b:Ljava/lang/String;

    const-string v2, "Key click is Back key"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-boolean v1, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->finish()V

    .line 146
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 113
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a:Z

    .line 66
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->v()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->b()V

    .line 71
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g()V

    .line 75
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a:Z

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 88
    invoke-direct {p0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->a()V

    .line 89
    return-void
.end method
