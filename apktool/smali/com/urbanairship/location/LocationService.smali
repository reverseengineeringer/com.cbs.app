.class public Lcom/urbanairship/location/LocationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationService$a;
    }
.end annotation


# static fields
.field static d:Z

.field static e:Lcom/urbanairship/location/LocationRequestOptions;


# instance fields
.field a:Lcom/urbanairship/location/LocationService$a;

.field b:Lcom/urbanairship/location/f;

.field c:Landroid/os/Looper;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/k",
            "<",
            "Landroid/location/Location;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Messenger;

.field private i:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->d:Z

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    .line 537
    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/os/Messenger;I)Lcom/urbanairship/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I)",
            "Lcom/urbanairship/k",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 476
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :goto_0
    monitor-exit p0

    return-object v1

    .line 480
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 481
    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/k;

    .line 484
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 485
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 475
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;I)Lcom/urbanairship/k;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;I)Lcom/urbanairship/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 323
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->d:Z

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    sget-object v0, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v0, :cond_2

    .line 336
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/e;->d()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_2

    .line 343
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/location/LocationRequestOptions;->a(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    :cond_2
    :goto_1
    const-string v0, "providerEnabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/e;->c()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 362
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    .line 366
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/e;->d()Lcom/urbanairship/l;

    move-result-object v2

    const-string v3, "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/d;)V

    .line 371
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2}, Lcom/urbanairship/location/f;->a()V

    .line 372
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2, v1}, Lcom/urbanairship/location/f;->a(Landroid/app/PendingIntent;)V

    .line 373
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/location/f;->a(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationService - Failed parsing LocationRequestOptions from JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/json/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :catch_1
    move-exception v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationService - Invalid LocationRequestOptions from JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_3
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_2
    check-cast v0, Landroid/location/Location;

    .line 383
    if-eqz v0, :cond_0

    .line 385
    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->i:Landroid/location/Location;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received location update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    sget-object v1, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/location/e;->c()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v1

    .line 391
    :goto_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/analytics/n$a;->a:Lcom/urbanairship/analytics/n$a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/urbanairship/analytics/c;->a(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/n$a;)V

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 397
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 399
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 379
    :cond_5
    const-string v0, "com.google.android.location.LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_2

    .line 389
    :cond_6
    sget-object v1, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    goto :goto_3
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    .line 4206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "LocationService - Received intent with action: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4412
    :pswitch_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4413
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/e;->c()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 4419
    sget-object v2, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-virtual {v2, v0}, Lcom/urbanairship/location/LocationRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4424
    :cond_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/e;->d()Lcom/urbanairship/l;

    move-result-object v2

    const-string v3, "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/d;)V

    .line 4429
    sput-object v0, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    .line 4430
    sput-boolean v1, Lcom/urbanairship/location/LocationService;->d:Z

    .line 4432
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    .line 4434
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2}, Lcom/urbanairship/location/f;->a()V

    .line 4435
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2, v1}, Lcom/urbanairship/location/f;->a(Landroid/app/PendingIntent;)V

    .line 4437
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/location/f;->a(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 4212
    :sswitch_0
    const-string v4, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 4441
    :cond_4
    sget-boolean v0, Lcom/urbanairship/location/LocationService;->d:Z

    if-nez v0, :cond_0

    .line 4443
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/f;->a(Landroid/app/PendingIntent;)V

    .line 4444
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/location/LocationService;->e:Lcom/urbanairship/location/LocationRequestOptions;

    .line 4445
    sput-boolean v2, Lcom/urbanairship/location/LocationService;->d:Z

    goto/16 :goto_0

    .line 4217
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4212
    nop

    :sswitch_data_0
    .sparse-switch
        -0x355d426c -> :sswitch_0
        0x21f7aa36 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 61
    .line 1247
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationService - Client unsubscribed from updates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Messenger;IILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p0, :cond_0

    .line 515
    :goto_0
    return v0

    .line 512
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    const/4 v0, 0x1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Messenger;ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    invoke-static {p0, v0, p1, p2}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 61
    .line 2228
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationService - Client subscribed for updates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2230
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2232
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->i:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->i:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2233
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->i:Landroid/location/Location;

    invoke-static {v0, v1, v2, v3}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 61
    .line 2258
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2259
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2261
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationRequestOptions;

    .line 2262
    if-nez v0, :cond_0

    .line 2264
    invoke-static {v3, v5, v2, v6}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;IILjava/lang/Object;)Z

    .line 2279
    :goto_0
    return-void

    .line 2268
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "LocationService - Single location request for client: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Requesting single location update with request options: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2272
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v1}, Lcom/urbanairship/location/f;->a()V

    .line 2273
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/f;->a(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/k;

    move-result-object v4

    .line 2275
    if-nez v4, :cond_1

    .line 2278
    invoke-static {v3, v5, v2, v6}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;IILjava/lang/Object;)Z

    goto :goto_0

    .line 2457
    :cond_1
    iget-object v5, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    monitor-enter v5

    .line 2458
    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 2459
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2460
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2464
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    new-instance v1, Lcom/urbanairship/location/LocationService$1;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/urbanairship/location/LocationService$1;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;ILcom/urbanairship/location/LocationRequestOptions;)V

    invoke-interface {v4, v1}, Lcom/urbanairship/k;->a(Lcom/urbanairship/k$a;)V

    goto :goto_0

    .line 2464
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 61
    .line 3307
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3308
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3310
    invoke-direct {p0, v1, v0}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;I)Lcom/urbanairship/k;

    move-result-object v2

    .line 3311
    if-eqz v2, :cond_0

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocationService - Canceled single request for client: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3313
    invoke-interface {v2}, Lcom/urbanairship/k;->a()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->h:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 178
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/os/Looper;

    .line 184
    new-instance v0, Lcom/urbanairship/location/LocationService$a;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/location/LocationService$a;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->a:Lcom/urbanairship/location/LocationService$a;

    .line 185
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Lcom/urbanairship/location/LocationService$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->h:Landroid/os/Messenger;

    .line 187
    new-instance v0, Lcom/urbanairship/location/f;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/location/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->b:Lcom/urbanairship/location/f;

    invoke-virtual {v0}, Lcom/urbanairship/location/f;->b()V

    .line 170
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 171
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 173
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->a:Lcom/urbanairship/location/LocationService$a;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 196
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 199
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Lcom/urbanairship/location/LocationService$a;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/LocationService$a;->sendMessage(Landroid/os/Message;)Z

    .line 201
    const/4 v0, 0x2

    return v0
.end method
