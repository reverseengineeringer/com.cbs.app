.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method
