.class final Lcom/cbs/app/visualon/player/PlayerFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/PlayerFragment$2;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/visualon/player/PlayerFragment$2;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/PlayerFragment$2;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$2$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment$2;

    iget-object v0, v0, Lcom/cbs/app/visualon/player/PlayerFragment$2;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->d(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    .line 136
    return-void
.end method
