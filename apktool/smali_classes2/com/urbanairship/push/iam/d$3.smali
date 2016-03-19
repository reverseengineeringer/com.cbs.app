.class final Lcom/urbanairship/push/iam/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/InAppMessage;

.field final synthetic b:Lcom/urbanairship/push/iam/d;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d;Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$3;->b:Lcom/urbanairship/push/iam/d;

    iput-object p2, p0, Lcom/urbanairship/push/iam/d$3;->a:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$3;->b:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->c(Lcom/urbanairship/push/iam/d;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$3;->b:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->c(Lcom/urbanairship/push/iam/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
