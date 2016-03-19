.class final Lcom/cbs/app/player/SimplePlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/player/SimplePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/player/SimplePlayerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/player/SimplePlayerActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/player/SimplePlayerActivity$2;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$2;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$2;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-static {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->b(Lcom/cbs/app/player/SimplePlayerActivity;)Lcom/cbs/app/player/SystemUiHider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/player/SystemUiHider;->b()V

    .line 63
    :cond_0
    return-void
.end method
