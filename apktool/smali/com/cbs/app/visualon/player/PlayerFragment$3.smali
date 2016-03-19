.class final Lcom/cbs/app/visualon/player/PlayerFragment$3;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/PlayerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 223
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->e(Lcom/cbs/app/visualon/player/PlayerFragment;)Z

    .line 244
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->e(Lcom/cbs/app/visualon/player/PlayerFragment;)Z

    .line 227
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    .line 229
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->f(Lcom/cbs/app/visualon/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment$3$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/PlayerFragment$3$1;-><init>(Lcom/cbs/app/visualon/player/PlayerFragment$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_0
    return-void
.end method
