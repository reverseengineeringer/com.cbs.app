.class final Lcom/adobe/b/c/b/a/c$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b/a/c;

.field private b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b/a/c;)V
    .locals 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/b/c/b/a/c$a;->a:Lcom/adobe/b/c/b/a/c;

    .line 70
    const-string v0, "VideoHeartbeatClock"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/b/a/c$a;->c:Z

    .line 71
    invoke-virtual {p0}, Lcom/adobe/b/c/b/a/c$a;->start()V

    .line 72
    invoke-virtual {p0}, Lcom/adobe/b/c/b/a/c$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    invoke-static {p1}, Lcom/adobe/b/c/b/a/c;->b(Lcom/adobe/b/c/b/a/c;)Lcom/adobe/b/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/b/c/b/a/c;->a(Lcom/adobe/b/c/b/a/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to obtain looper thread."

    invoke-interface {v0, v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/adobe/b/c/b/a/c$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/c$a;->b:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c$a;->b:Landroid/os/Handler;

    .line 82
    new-instance v1, Lcom/adobe/b/c/b/a/c$a$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/b/c/b/a/c$a$1;-><init>(Lcom/adobe/b/c/b/a/c$a;Lcom/adobe/b/c/b/a/c;Landroid/os/Handler;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/adobe/b/c/b/a/c$a;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/adobe/b/c/b/a/c$a;->c:Z

    return v0
.end method
