.class final Lcom/urbanairship/location/e$b;
.super Lcom/urbanairship/location/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/e;

.field private final b:Lcom/urbanairship/location/LocationRequestOptions;

.field private final c:I


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/urbanairship/location/e$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/urbanairship/location/e$b;->a:Lcom/urbanairship/location/e;

    const/4 v1, 0x6

    iget v2, p0, Lcom/urbanairship/location/e$b;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/urbanairship/location/e;->a(Lcom/urbanairship/location/e;IILandroid/os/Bundle;)Z

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/e$b;->a:Lcom/urbanairship/location/e;

    invoke-static {v0}, Lcom/urbanairship/location/e;->d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/e$b;->a:Lcom/urbanairship/location/e;

    invoke-static {v0}, Lcom/urbanairship/location/e;->d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/urbanairship/location/e$b;->c:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 536
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 4

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/location/e$b;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 548
    const-string v1, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    iget-object v2, p0, Lcom/urbanairship/location/e$b;->b:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 549
    iget-object v1, p0, Lcom/urbanairship/location/e$b;->a:Lcom/urbanairship/location/e;

    const/4 v2, 0x5

    iget v3, p0, Lcom/urbanairship/location/e$b;->c:I

    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/location/e;->a(Lcom/urbanairship/location/e;IILandroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
