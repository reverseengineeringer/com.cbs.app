.class final Lcom/cbs/app/visualon/player/PlayerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/PlayerFragment;->onResume()V
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
    .line 355
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$4;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$4;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->d(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    .line 359
    return-void
.end method
