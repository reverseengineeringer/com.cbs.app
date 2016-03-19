.class final Lcom/urbanairship/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/f;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/f;


# direct methods
.method constructor <init>(Lcom/urbanairship/f;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/urbanairship/f$1;->a:Lcom/urbanairship/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/urbanairship/f$1;->a:Lcom/urbanairship/f;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/f$1;->a:Lcom/urbanairship/f;

    invoke-virtual {v0}, Lcom/urbanairship/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    monitor-exit v1

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/f$1;->a:Lcom/urbanairship/f;

    invoke-virtual {v0}, Lcom/urbanairship/f;->c()V

    .line 66
    iget-object v0, p0, Lcom/urbanairship/f$1;->a:Lcom/urbanairship/f;

    invoke-static {v0}, Lcom/urbanairship/f;->a(Lcom/urbanairship/f;)Z

    .line 67
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
