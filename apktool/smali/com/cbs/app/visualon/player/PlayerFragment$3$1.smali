.class final Lcom/cbs/app/visualon/player/PlayerFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/PlayerFragment$3;->a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/visualon/player/PlayerFragment$3;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/PlayerFragment$3;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$3$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment$3;

    iget-object v0, v0, Lcom/cbs/app/visualon/player/PlayerFragment$3;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->d(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    .line 234
    return-void
.end method
