.class public Lcom/flurry/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/o$3;,
        Lcom/flurry/sdk/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/o;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/u;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/o$a;

.field private f:Lcom/google/android/gms/ads/a/a$a;

.field private g:Ljava/lang/String;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/flurry/sdk/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1417
    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1418
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1419
    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1420
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/flurry/sdk/o;->c:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/o;->d:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/flurry/sdk/o$a;->a:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    .line 80
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/o$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/o$1;-><init>(Lcom/flurry/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/o;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/flurry/sdk/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/o;->b:Lcom/flurry/sdk/o;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/flurry/sdk/o;

    invoke-direct {v0}, Lcom/flurry/sdk/o;-><init>()V

    sput-object v0, Lcom/flurry/sdk/o;->b:Lcom/flurry/sdk/o;

    .line 49
    :cond_0
    sget-object v0, Lcom/flurry/sdk/o;->b:Lcom/flurry/sdk/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/o;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x25

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4122
    :cond_0
    :goto_0
    sget-object v0, Lcom/flurry/sdk/o$a;->f:Lcom/flurry/sdk/o$a;

    iget-object v3, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/o$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4124
    sget-object v0, Lcom/flurry/sdk/o$3;->a:[I

    iget-object v3, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    invoke-virtual {v3}, Lcom/flurry/sdk/o$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 4152
    :goto_1
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/o$3;->a:[I

    iget-object v3, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    invoke-virtual {v3}, Lcom/flurry/sdk/o$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4185
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/bs;->a()V

    .line 4187
    invoke-static {}, Lcom/flurry/sdk/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4191
    invoke-static {}, Lcom/flurry/sdk/o;->f()Lcom/google/android/gms/ads/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/o;->f:Lcom/google/android/gms/ads/a/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4173
    :catch_0
    move-exception v0

    .line 4174
    const/4 v3, 0x4

    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception during id fetch:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4126
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/o$a;->b:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    goto :goto_1

    .line 4130
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/o$a;->c:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    goto :goto_1

    .line 4134
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/o$a;->d:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    goto :goto_1

    .line 4138
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/o$a;->e:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    goto :goto_1

    .line 4142
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/o$a;->f:Lcom/flurry/sdk/o$a;

    iput-object v0, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    goto :goto_1

    .line 4203
    :pswitch_6
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/bs;->a()V

    .line 4259
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4281
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 4260
    :goto_2
    if-nez v0, :cond_4

    move-object v0, v1

    .line 4251
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4205
    :cond_1
    :goto_4
    iput-object v0, p0, Lcom/flurry/sdk/o;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 4285
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 4412
    iget-object v4, p0, Lcom/flurry/sdk/o;->c:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4285
    if-eqz v0, :cond_3

    move v0, v2

    .line 4286
    goto :goto_2

    .line 4289
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 4264
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "AND"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 5268
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/o;->g()Ljava/lang/String;

    move-result-object v0

    .line 5269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5271
    invoke-direct {p0}, Lcom/flurry/sdk/o;->h()Ljava/lang/String;

    move-result-object v0

    .line 5272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5293
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/bp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/bs;->f(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    mul-long/2addr v6, v10

    add-long/2addr v4, v6

    .line 5295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ID"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v4, v5, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5299
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5303
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v3

    .line 5408
    const-string v4, ".flurryb."

    .line 5303
    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5305
    invoke-static {v3}, Lcom/flurry/sdk/br;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5309
    invoke-static {v0, v3}, Lcom/flurry/sdk/o;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_4

    .line 6209
    :pswitch_7
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6424
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6425
    if-eqz v0, :cond_0

    .line 6429
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 6431
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 6433
    :try_start_2
    invoke-static {v0}, Lcom/flurry/sdk/bs;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 6436
    if-eqz v0, :cond_7

    array-length v3, v0

    const/16 v4, 0x14

    if-ne v3, v4, :cond_7

    .line 6437
    iput-object v0, p0, Lcom/flurry/sdk/o;->h:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 6443
    :catch_1
    move-exception v0

    const/4 v0, 0x6

    :try_start_3
    sget-object v3, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v4, "Exception in generateHashedImei()"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 6439
    :cond_7
    const/4 v3, 0x6

    :try_start_4
    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sha1 is not 20"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " bytes long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 7093
    :pswitch_8
    :try_start_5
    iget-object v0, p0, Lcom/flurry/sdk/o;->f:Lcom/google/android/gms/ads/a/a$a;

    if-nez v0, :cond_a

    move-object v0, v1

    .line 6450
    :goto_5
    if-eqz v0, :cond_8

    .line 6451
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v5, "Fetched advertising id"

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6452
    iget-object v3, p0, Lcom/flurry/sdk/o;->d:Ljava/util/Map;

    sget-object v4, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/bs;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7109
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/o;->g:Ljava/lang/String;

    .line 6456
    if-eqz v0, :cond_9

    .line 6457
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v5, "Fetched device id"

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6458
    iget-object v3, p0, Lcom/flurry/sdk/o;->d:Ljava/util/Map;

    sget-object v4, Lcom/flurry/sdk/u;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/bs;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7113
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/o;->h:[B

    .line 6462
    if-eqz v0, :cond_0

    .line 6463
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v5, "Fetched hashed IMEI"

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6464
    iget-object v3, p0, Lcom/flurry/sdk/o;->d:Ljava/util/Map;

    sget-object v4, Lcom/flurry/sdk/u;->b:Lcom/flurry/sdk/u;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 7097
    :cond_a
    iget-object v0, p0, Lcom/flurry/sdk/o;->f:Lcom/google/android/gms/ads/a/a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_5

    .line 4179
    :cond_b
    new-instance v0, Lcom/flurry/sdk/p;

    invoke-direct {v0}, Lcom/flurry/sdk/p;-><init>()V

    .line 4180
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V

    .line 40
    return-void

    .line 4124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4152
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2383
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 318
    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v4, "Error when saving deviceId"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 317
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static e()Z
    .locals 5

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v1

    .line 220
    if-nez v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 223
    :cond_0
    sget-object v2, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Google Play Services not available - connection result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    sget-object v1, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 229
    sget-object v2, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES EXCEPTION: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f()Lcom/google/android/gms/ads/a/a$a;
    .locals 5

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 242
    sget-object v2, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    .line 2408
    const-string v2, ".flurryb."

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3387
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eq v1, v3, :cond_2

    .line 339
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3390
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 336
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 337
    :goto_2
    const/4 v3, 0x6

    :try_start_3
    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 336
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 346
    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    new-instance v2, Lcom/flurry/sdk/o$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/o$2;-><init>(Lcom/flurry/sdk/o;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 363
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3394
    const v1, 0xb5fa

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eq v1, v3, :cond_3

    .line 376
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3398
    :cond_3
    const/4 v1, 0x2

    :try_start_2
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3402
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 3404
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 374
    :goto_2
    const/4 v3, 0x6

    :try_start_3
    sget-object v4, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 373
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/flurry/sdk/o$a;->f:Lcom/flurry/sdk/o$a;

    iget-object v1, p0, Lcom/flurry/sdk/o;->e:Lcom/flurry/sdk/o$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/o$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/flurry/sdk/o;->f:Lcom/google/android/gms/ads/a/a$a;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/o;->f:Lcom/google/android/gms/ads/a/a$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/u;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
