.class final Lcom/cbs/app/service/LiveFyreService$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/LiveFyreService$6;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/LiveFyreService$6;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/LiveFyreService$6;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService$6$1;->a:Lcom/cbs/app/service/LiveFyreService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6$1;->a:Lcom/cbs/app/service/LiveFyreService$6;

    iget-object v0, v0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-static {v0}, Lcom/cbs/app/service/LiveFyreService;->f(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$6$1;->a:Lcom/cbs/app/service/LiveFyreService$6;

    iget-object v0, v0, Lcom/cbs/app/service/LiveFyreService$6;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->a()V

    .line 397
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
