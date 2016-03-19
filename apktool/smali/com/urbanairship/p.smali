.class public final Lcom/urbanairship/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/p$a;
    }
.end annotation


# static fields
.field static volatile a:Z

.field static volatile b:Z

.field static c:Landroid/app/Application;

.field static d:Lcom/urbanairship/p;

.field private static final p:Ljava/lang/Object;

.field private static q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field e:Lcom/urbanairship/actions/d;

.field f:Lcom/urbanairship/a;

.field g:Lcom/urbanairship/analytics/c;

.field h:Lcom/urbanairship/b;

.field i:Lcom/urbanairship/l;

.field j:Lcom/urbanairship/push/j;

.field k:Lcom/urbanairship/richpush/RichPushManager;

.field l:Lcom/urbanairship/location/e;

.field m:Lcom/urbanairship/c/b;

.field n:Lcom/urbanairship/push/iam/d;

.field o:Lcom/urbanairship/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    .line 89
    sput-boolean v1, Lcom/urbanairship/p;->a:Z

    .line 90
    sput-boolean v1, Lcom/urbanairship/p;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    .line 119
    iput-object p3, p0, Lcom/urbanairship/p;->i:Lcom/urbanairship/l;

    .line 121
    new-instance v0, Lcom/urbanairship/analytics/c;

    invoke-direct {v0, p1, p3, p2}, Lcom/urbanairship/analytics/c;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;)V

    iput-object v0, p0, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    .line 122
    new-instance v0, Lcom/urbanairship/b;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/b;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    iput-object v0, p0, Lcom/urbanairship/p;->h:Lcom/urbanairship/b;

    .line 123
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    iput-object v0, p0, Lcom/urbanairship/p;->k:Lcom/urbanairship/richpush/RichPushManager;

    .line 124
    new-instance v0, Lcom/urbanairship/location/e;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/location/e;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    iput-object v0, p0, Lcom/urbanairship/p;->l:Lcom/urbanairship/location/e;

    .line 125
    new-instance v0, Lcom/urbanairship/push/iam/d;

    invoke-direct {v0, p3}, Lcom/urbanairship/push/iam/d;-><init>(Lcom/urbanairship/l;)V

    iput-object v0, p0, Lcom/urbanairship/p;->n:Lcom/urbanairship/push/iam/d;

    .line 126
    new-instance v0, Lcom/urbanairship/push/j;

    invoke-direct {v0, p1, p3, p2}, Lcom/urbanairship/push/j;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;)V

    iput-object v0, p0, Lcom/urbanairship/p;->j:Lcom/urbanairship/push/j;

    .line 127
    invoke-static {p2}, Lcom/urbanairship/c/b;->a(Lcom/urbanairship/a;)Lcom/urbanairship/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/p;->m:Lcom/urbanairship/c/b;

    .line 128
    new-instance v0, Lcom/urbanairship/actions/d;

    invoke-direct {v0}, Lcom/urbanairship/actions/d;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/p;->e:Lcom/urbanairship/actions/d;

    .line 129
    new-instance v0, Lcom/urbanairship/g;

    iget-object v1, p0, Lcom/urbanairship/p;->j:Lcom/urbanairship/push/j;

    invoke-direct {v0, p1, p2, v1}, Lcom/urbanairship/g;-><init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/push/j;)V

    iput-object v0, p0, Lcom/urbanairship/p;->o:Lcom/urbanairship/g;

    .line 130
    return-void
.end method

.method public static a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Lcom/urbanairship/p;->b(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/urbanairship/p;
    .locals 3

    .prologue
    .line 141
    sget-object v2, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    sget-boolean v0, Lcom/urbanairship/p;->a:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    monitor-exit v2

    .line 165
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget-boolean v0, Lcom/urbanairship/p;->b:Z

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Take off must be called before shared()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_1
    :try_start_1
    sget-boolean v0, Lcom/urbanairship/p;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 155
    :try_start_2
    sget-object v0, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    move v1, v0

    .line 158
    goto :goto_1

    .line 161
    :cond_2
    :try_start_3
    sget-object v0, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    if-eqz v1, :cond_3

    .line 165
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 163
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static a(Landroid/app/Application;Lcom/urbanairship/a;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/urbanairship/p;->a(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V

    .line 258
    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
    .locals 3

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 283
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    :goto_0
    sget-object v1, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_1
    sget-boolean v0, Lcom/urbanairship/p;->a:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/urbanairship/p;->b:Z

    if-eqz v0, :cond_4

    .line 296
    :cond_2
    const-string v0, "You can only call takeOff() once."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 297
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :goto_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "AsyncTask workaround failed."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_3
    const-string v0, "takeOff() must be called on the main thread!"

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/urbanairship/p;->b:Z

    .line 304
    sput-object p0, Lcom/urbanairship/p;->c:Landroid/app/Application;

    .line 305
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->a()V

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_5

    .line 308
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->a(Landroid/app/Application;)V

    .line 309
    invoke-static {p0}, Lcom/urbanairship/push/iam/d;->a(Landroid/app/Application;)V

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/urbanairship/p$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/urbanairship/p$2;-><init>(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static b(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/urbanairship/p$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/urbanairship/p$1;-><init>(Landroid/os/Looper;Lcom/urbanairship/p$a;)V

    .line 209
    sget-object v1, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-boolean v2, Lcom/urbanairship/p;->a:Z

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/urbanairship/f;->run()V

    .line 218
    :goto_0
    monitor-exit v1

    .line 220
    return-object v0

    .line 213
    :cond_0
    sget-object v2, Lcom/urbanairship/p;->q:Ljava/util/List;

    if-nez v2, :cond_1

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/urbanairship/p;->q:Ljava/util/List;

    .line 216
    :cond_1
    sget-object v2, Lcom/urbanairship/p;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 62
    .line 4332
    if-nez p1, :cond_0

    .line 4333
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/a;->a(Landroid/content/Context;)Lcom/urbanairship/a;

    move-result-object p1

    .line 4336
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4337
    sget-object v1, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 4338
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/urbanairship/p;->b:Z

    .line 4339
    sget-object v0, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4342
    const-string v0, "AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 4344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application configuration is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4455
    :cond_1
    iget-boolean v0, p1, Lcom/urbanairship/a;->l:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/urbanairship/a;->q:I

    .line 4348
    :goto_0
    sput v0, Lcom/urbanairship/j;->a:I

    .line 4349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - UALib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/j;->b:Ljava/lang/String;

    .line 4352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Airship log level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/urbanairship/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UA Version: 6.3.1 / App key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Production = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/urbanairship/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4355
    new-instance v0, Lcom/urbanairship/l;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/l;-><init>(Landroid/content/Context;)V

    .line 4356
    invoke-virtual {v0}, Lcom/urbanairship/l;->a()V

    .line 4358
    new-instance v1, Lcom/urbanairship/p;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/urbanairship/p;-><init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/l;)V

    sput-object v1, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    .line 5560
    const-string v1, "6.3.1"

    .line 4361
    const-string v2, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-virtual {v0, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4363
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4364
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Urban Airship library changed from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4369
    :cond_2
    const-string v1, "com.urbanairship.application.device.LIBRARY_VERSION"

    .line 6560
    const-string v2, "6.3.1"

    .line 4369
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    iget-boolean v0, p1, Lcom/urbanairship/a;->l:Z

    if-nez v0, :cond_3

    .line 4373
    sget-object v0, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    .line 6722
    iget-object v1, v0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Lcom/urbanairship/a;)V

    .line 6724
    sget-object v1, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    invoke-virtual {v1}, Lcom/urbanairship/p;->u()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4376
    :cond_3
    :goto_1
    sget-object v1, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 4380
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/urbanairship/p;->a:Z

    .line 4381
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/p;->b:Z

    .line 4384
    sget-object v0, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    .line 11568
    iget-object v2, v0, Lcom/urbanairship/p;->k:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v2}, Lcom/urbanairship/d;->a()V

    .line 11569
    iget-object v2, v0, Lcom/urbanairship/p;->j:Lcom/urbanairship/push/j;

    invoke-virtual {v2}, Lcom/urbanairship/d;->a()V

    .line 11570
    iget-object v2, v0, Lcom/urbanairship/p;->l:Lcom/urbanairship/location/e;

    invoke-virtual {v2}, Lcom/urbanairship/d;->a()V

    .line 11571
    iget-object v2, v0, Lcom/urbanairship/p;->n:Lcom/urbanairship/push/iam/d;

    invoke-virtual {v2}, Lcom/urbanairship/d;->a()V

    .line 11572
    iget-object v2, v0, Lcom/urbanairship/p;->o:Lcom/urbanairship/g;

    invoke-virtual {v2}, Lcom/urbanairship/d;->a()V

    .line 11574
    iget-object v0, v0, Lcom/urbanairship/p;->e:Lcom/urbanairship/actions/d;

    invoke-virtual {v0}, Lcom/urbanairship/actions/d;->a()V

    .line 4389
    if-eqz p2, :cond_4

    .line 4390
    sget-object v0, Lcom/urbanairship/p;->d:Lcom/urbanairship/p;

    invoke-interface {p2, v0}, Lcom/urbanairship/p$a;->a(Lcom/urbanairship/p;)V

    .line 4394
    :cond_4
    sget-object v0, Lcom/urbanairship/p;->q:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 4395
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/urbanairship/p;->q:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4397
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 4405
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 4455
    :cond_5
    iget v0, p1, Lcom/urbanairship/a;->p:I

    goto/16 :goto_0

    .line 6726
    :pswitch_0
    iget-object v1, v0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    const-string v2, "GCM"

    invoke-virtual {v1, v2}, Lcom/urbanairship/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6727
    iget-object v0, v0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    .line 7461
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8441
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7060
    const-string v3, "android.permission.WAKE_LOCK"

    invoke-static {v3}, Lcom/urbanairship/d/d;->a(Ljava/lang/String;)V

    .line 7062
    const-string v3, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v3}, Lcom/urbanairship/d/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 7063
    const-string v3, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v3}, Lcom/urbanairship/d/d;->a(Ljava/lang/String;)V

    .line 7070
    :goto_3
    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7071
    iget v0, v0, Lcom/urbanairship/a;->r:I

    if-lt v0, v6, :cond_7

    if-eqz v3, :cond_6

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v6, :cond_7

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_8

    .line 7074
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7076
    invoke-static {v0}, Lcom/urbanairship/d/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7077
    invoke-static {v0}, Lcom/urbanairship/d/d;->a(Ljava/lang/String;)V

    .line 7083
    :cond_8
    :goto_4
    invoke-static {}, Lcom/urbanairship/google/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7085
    const-class v0, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-static {v0}, Lcom/urbanairship/d/d;->c(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 7087
    if-eqz v0, :cond_c

    .line 7089
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7090
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7092
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7093
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AndroidManifest.xml\'s "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " declaration missing required "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filter with category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 7104
    :cond_9
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 9119
    invoke-static {}, Lcom/urbanairship/google/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10051
    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 7105
    :catch_0
    move-exception v0

    .line 7106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Play services developer error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7065
    :cond_a
    const-string v3, "Required permission com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager."

    invoke-static {v3}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7079
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Required permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is unknown to PackageManager."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 7098
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidManifest.xml missing required receiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 7109
    :cond_d
    const-string v0, "Google Play services required for GCM."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6729
    :cond_e
    const-string v0, "Android platform detected but GCM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6735
    :pswitch_1
    iget-object v0, v0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    const-string v1, "ADM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10082
    invoke-static {}, Lcom/urbanairship/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11046
    :try_start_4
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 11047
    :catch_1
    move-exception v0

    .line 11048
    const-string v1, "AndroidManifest invalid ADM setup."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 6738
    :cond_f
    const-string v0, "Amazon platform detected but ADM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4399
    :cond_10
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/urbanairship/p;->q:Ljava/util/List;

    .line 4404
    :cond_11
    sget-object v0, Lcom/urbanairship/p;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4405
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 6724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.UA_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static e()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 1461
    :try_start_0
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2441
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 472
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2487
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_0

    .line 3461
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3487
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Landroid/content/Context;
    .locals 2

    .prologue
    .line 529
    sget-object v0, Lcom/urbanairship/p;->c:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TakeOff must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    sget-object v0, Lcom/urbanairship/p;->c:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 542
    sget-boolean v0, Lcom/urbanairship/p;->a:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 551
    sget-boolean v0, Lcom/urbanairship/p;->b:Z

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    const-string v0, "6.3.1"

    return-object v0
.end method


# virtual methods
.method public final l()Lcom/urbanairship/a;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    return-object v0
.end method

.method public final m()Lcom/urbanairship/push/j;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/urbanairship/p;->j:Lcom/urbanairship/push/j;

    return-object v0
.end method

.method public final n()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/urbanairship/p;->k:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method public final o()Lcom/urbanairship/location/e;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/urbanairship/p;->l:Lcom/urbanairship/location/e;

    return-object v0
.end method

.method public final p()Lcom/urbanairship/push/iam/d;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/urbanairship/p;->n:Lcom/urbanairship/push/iam/d;

    return-object v0
.end method

.method public final q()Lcom/urbanairship/analytics/c;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    return-object v0
.end method

.method public final r()Lcom/urbanairship/b;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/urbanairship/p;->h:Lcom/urbanairship/b;

    return-object v0
.end method

.method public final s()Lcom/urbanairship/c/b;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/urbanairship/p;->m:Lcom/urbanairship/c/b;

    return-object v0
.end method

.method public final t()Lcom/urbanairship/actions/d;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/urbanairship/p;->e:Lcom/urbanairship/actions/d;

    return-object v0
.end method

.method public final u()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 687
    iget-object v2, p0, Lcom/urbanairship/p;->i:Lcom/urbanairship/l;

    const-string v3, "com.urbanairship.application.device.PLATFORM"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 697
    invoke-static {}, Lcom/urbanairship/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/p;->i:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 715
    :goto_1
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 694
    goto :goto_1

    .line 700
    :cond_1
    invoke-static {}, Lcom/urbanairship/google/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 703
    const-string v2, "amazon"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 708
    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
