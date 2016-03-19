.class public abstract Lcom/nielsen/app/sdk/h$d;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/h$f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/nielsen/app/sdk/h;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 428
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$d;->d:Lcom/nielsen/app/sdk/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/h$d;->a:Z

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$d;->c:Ljava/util/concurrent/BlockingQueue;

    .line 430
    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v0

    int-to-long v0, v0

    .line 432
    iput-object p2, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    .line 433
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/h$d;->setName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/h$d;->b()Ljava/util/concurrent/BlockingQueue;

    .line 438
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/h$d;->start()V

    .line 440
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public final b()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/h$f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->c:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$d;->c:Ljava/util/concurrent/BlockingQueue;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 334
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/h$d;->a:Z

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/h$f;

    .line 337
    if-eqz v0, :cond_0

    .line 1169
    iget v1, v0, Lcom/nielsen/app/sdk/h$f;->a:I

    .line 349
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1193
    :pswitch_1
    iget-object v1, v0, Lcom/nielsen/app/sdk/h$f;->c:Ljava/lang/String;

    .line 1253
    iget-object v0, v0, Lcom/nielsen/app/sdk/h$f;->h:Ljava/lang/Exception;

    .line 374
    invoke-virtual {p0, v1, v0}, Lcom/nielsen/app/sdk/h$d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/h$d;->a:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    const-string v1, "The application was suspended or terminated while waiting sending information from the caller object"

    invoke-virtual {p0, v1, v0}, Lcom/nielsen/app/sdk/h$d;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->d:Lcom/nielsen/app/sdk/h;

    iget-object v0, v0, Lcom/nielsen/app/sdk/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_1
    return-void

    .line 2241
    :pswitch_2
    :try_start_2
    iget-object v0, v0, Lcom/nielsen/app/sdk/h$f;->g:Ljava/lang/String;

    .line 399
    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/h$d;->a(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/h$d;->a:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$d;->d:Lcom/nielsen/app/sdk/h;

    iget-object v1, v1, Lcom/nielsen/app/sdk/h;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$d;->d:Lcom/nielsen/app/sdk/h;

    iget-object v0, v0, Lcom/nielsen/app/sdk/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
