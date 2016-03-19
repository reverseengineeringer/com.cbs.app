.class final Lcom/cbs/app/visualon/player/PlayerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/visualon/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->c()V

    .line 117
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->c(Lcom/cbs/app/visualon/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 130
    :cond_0
    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment$2$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$2$1;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;Z)Z

    .line 142
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;Z)Z

    .line 148
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->f()V

    .line 149
    return-void
.end method
