.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    .line 712
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 717
    const-string v0, "Timer is expired, going to interrupt the thread"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 719
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_0
    return-void
.end method
