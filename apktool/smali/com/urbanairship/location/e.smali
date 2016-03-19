.class public final Lcom/urbanairship/location/e;
.super Lcom/urbanairship/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/e$b;,
        Lcom/urbanairship/location/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Messenger;

.field private final b:Landroid/content/Context;

.field private c:Landroid/os/Messenger;

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/location/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/urbanairship/l;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/ServiceConnection;

.field private final k:Lcom/urbanairship/l$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/urbanairship/d;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/urbanairship/location/e;->f:I

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/e;->i:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/urbanairship/location/e$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/e$1;-><init>(Lcom/urbanairship/location/e;)V

    iput-object v0, p0, Lcom/urbanairship/location/e;->j:Landroid/content/ServiceConnection;

    .line 108
    new-instance v0, Lcom/urbanairship/location/e$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/e$2;-><init>(Lcom/urbanairship/location/e;)V

    iput-object v0, p0, Lcom/urbanairship/location/e;->k:Lcom/urbanairship/l$b;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/e;->b:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    .line 133
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/urbanairship/location/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/location/e$a;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/e;->a:Landroid/os/Messenger;

    .line 134
    return-void
.end method

.method private declared-synchronized a(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/urbanairship/location/e;->c:Landroid/os/Messenger;

    .line 419
    iget-object v2, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/e$b;

    invoke-virtual {v0}, Lcom/urbanairship/location/e$b;->d()V

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-direct {p0}, Lcom/urbanairship/location/e;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/urbanairship/location/e;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/urbanairship/location/e;->k()V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/e;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/urbanairship/location/e;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private a(IILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v1, p0, Lcom/urbanairship/location/e;->c:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return v0

    .line 447
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 448
    if-eqz p3, :cond_1

    .line 449
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/location/e;->a:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/location/e;->c:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/location/e;IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/location/e;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/urbanairship/location/e;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/urbanairship/location/e;->f()V

    return-void
.end method

.method static synthetic c(Lcom/urbanairship/location/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/urbanairship/location/e;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/location/e;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/urbanairship/location/e;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v1, p0, Lcom/urbanairship/location/e;->i:Ljava/util/List;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-boolean v0, p0, Lcom/urbanairship/location/e;->d:Z

    if-eqz v0, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/urbanairship/location/e;->h()V

    .line 342
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/location/e;->b:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/urbanairship/location/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    const-string v0, "Unable to start location service. Check that the location service is added to the manifest."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 338
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/urbanairship/location/e;->g()V

    .line 339
    monitor-exit v1

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 344
    :cond_3
    invoke-direct {p0}, Lcom/urbanairship/location/e;->i()V

    .line 345
    iget-object v1, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    monitor-enter v1

    .line 347
    :try_start_2
    iget-object v0, p0, Lcom/urbanairship/location/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 348
    invoke-direct {p0}, Lcom/urbanairship/location/e;->j()V

    .line 350
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/e;->d:Z

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 370
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    iget-object v2, p0, Lcom/urbanairship/location/e;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/e;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_1
    :try_start_1
    const-string v0, "Unable to bind to location service. Check that the location service is added to the manifest."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/e;->a(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 3

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/e;->e:Z

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/e;->a(IILandroid/os/Bundle;)Z

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/e;->d:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/e;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/e;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/urbanairship/location/e;->c:Landroid/os/Messenger;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    iget-object v1, p0, Lcom/urbanairship/location/e;->k:Lcom/urbanairship/l$b;

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Lcom/urbanairship/l$b;)V

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v1, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/urbanairship/location/e;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/urbanairship/location/e$3;

    invoke-direct {v2, p0}, Lcom/urbanairship/location/e$3;-><init>(Lcom/urbanairship/location/e;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 153
    invoke-direct {p0}, Lcom/urbanairship/location/e;->f()V

    .line 154
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/location/LocationRequestOptions;->a(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 239
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 240
    new-instance v1, Lcom/urbanairship/location/LocationRequestOptions$a;

    invoke-direct {v1}, Lcom/urbanairship/location/LocationRequestOptions$a;-><init>()V

    .line 1399
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$a;B)V

    .line 243
    :cond_1
    return-object v0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UALocationManager - Failed parsing LocationRequestOptions from JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/json/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :catch_1
    move-exception v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UALocationManager - Invalid LocationRequestOptions from JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d()Lcom/urbanairship/l;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    return-object v0
.end method

.method final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/urbanairship/location/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2195
    iget-object v1, p0, Lcom/urbanairship/location/e;->h:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 560
    if-nez v1, :cond_0

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/analytics/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
