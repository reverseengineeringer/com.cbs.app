.class final Lcom/urbanairship/location/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 474
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v2

    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 504
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 478
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 479
    if-eqz v0, :cond_0

    .line 482
    invoke-static {v2}, Lcom/urbanairship/location/e;->c(Lcom/urbanairship/location/e;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 483
    :try_start_0
    invoke-static {v2}, Lcom/urbanairship/location/e;->c(Lcom/urbanairship/location/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 491
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 494
    invoke-static {v2}, Lcom/urbanairship/location/e;->d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 495
    :try_start_2
    invoke-static {v2}, Lcom/urbanairship/location/e;->d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/c;

    .line 496
    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {v1, v0}, Lcom/urbanairship/location/c;->a(Landroid/location/Location;)V

    .line 498
    invoke-static {v2}, Lcom/urbanairship/location/e;->d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 499
    invoke-static {v2}, Lcom/urbanairship/location/e;->b(Lcom/urbanairship/location/e;)V

    .line 501
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 476
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
