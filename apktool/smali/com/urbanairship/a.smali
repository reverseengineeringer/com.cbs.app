.class public Lcom/urbanairship/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "productionAppKey"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "productionAppSecret"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "developmentAppKey"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "developmentAppSecret"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "hostURL"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "analyticsServer"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "landingPageContentURL"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "gcmSender"
    .end annotation
.end field

.field public i:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "additionalGCMSenderIds"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "allowedTransports"
    .end annotation
.end field

.field public k:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/n;
        a = "whitelist"
    .end annotation
.end field

.field public l:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "inProduction"
    .end annotation
.end field

.field public m:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "analyticsEnabled"
    .end annotation
.end field

.field public n:J
    .annotation runtime Lcom/urbanairship/n;
        a = "backgroundReportingIntervalMS"
    .end annotation
.end field

.field public o:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "clearNamedUser"
    .end annotation
.end field

.field public p:I
    .annotation runtime Lcom/urbanairship/h;
        a = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/n;
        a = "developmentLogLevel"
    .end annotation
.end field

.field public q:I
    .annotation runtime Lcom/urbanairship/h;
        a = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/n;
        a = "productionLogLevel"
    .end annotation
.end field

.field public r:I
    .annotation runtime Lcom/urbanairship/h;
        a = "android.os.Build.VERSION_CODES"
    .end annotation

    .annotation runtime Lcom/urbanairship/n;
        a = "minSdkVersion"
    .end annotation
.end field

.field public s:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "autoLaunchApplication"
    .end annotation
.end field

.field public t:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "channelCreationDelayEnabled"
    .end annotation
.end field

.field public u:Z
    .annotation runtime Lcom/urbanairship/n;
        a = "channelCaptureEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "https://device-api.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/a;->e:Ljava/lang/String;

    .line 121
    const-string v0, "https://combine.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/a;->f:Ljava/lang/String;

    .line 127
    const-string v0, "https://dl.urbanairship.com/aaa/"

    iput-object v0, p0, Lcom/urbanairship/a;->g:Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADM"

    aput-object v1, v0, v2

    const-string v1, "GCM"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/urbanairship/a;->j:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/a;->k:[Ljava/lang/String;

    .line 170
    iput-boolean v2, p0, Lcom/urbanairship/a;->l:Z

    .line 178
    iput-boolean v3, p0, Lcom/urbanairship/a;->m:Z

    .line 187
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/urbanairship/a;->n:J

    .line 195
    iput-boolean v2, p0, Lcom/urbanairship/a;->o:Z

    .line 210
    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/a;->p:I

    .line 226
    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/a;->q:I

    .line 234
    const/4 v0, 0x4

    iput v0, p0, Lcom/urbanairship/a;->r:I

    .line 244
    iput-boolean v3, p0, Lcom/urbanairship/a;->s:Z

    .line 252
    iput-boolean v2, p0, Lcom/urbanairship/a;->t:Z

    .line 260
    iput-boolean v3, p0, Lcom/urbanairship/a;->u:Z

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 407
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 409
    :catch_0
    move-exception v0

    const-class v0, Lcom/urbanairship/h;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/h;

    .line 411
    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has a type mismatch or missing annotation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-interface {v0}, Lcom/urbanairship/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 418
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 421
    :catch_1
    move-exception v0

    .line 422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is incompatible with specified class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to match class for field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/urbanairship/a;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 276
    new-instance v5, Lcom/urbanairship/a;

    invoke-direct {v5}, Lcom/urbanairship/a;-><init>()V

    .line 1288
    const-string v6, "airshipconfig.properties"

    .line 1298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1303
    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v5

    .line 1308
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1312
    :cond_1
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 1316
    :try_start_1
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1317
    :try_start_2
    invoke-virtual {v7, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1319
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v9, :cond_b

    aget-object v10, v8, v4

    .line 1323
    const-class v0, Lcom/urbanairship/a;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1356
    const-class v0, Lcom/urbanairship/n;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/n;

    .line 1358
    if-eqz v0, :cond_c

    .line 1359
    invoke-interface {v0}, Lcom/urbanairship/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1360
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AirshipConfigOptions - Found PropertyAnnotation for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/urbanairship/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " matching "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    .line 1329
    :goto_2
    if-eqz v0, :cond_3

    .line 1375
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v11, :cond_2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v11, Ljava/lang/Boolean;

    if-ne v3, v11, :cond_4

    .line 1376
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1321
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1377
    :cond_4
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v11, Ljava/lang/Integer;

    if-ne v3, v11, :cond_6

    .line 1378
    :cond_5
    invoke-direct {v5, v10, v0}, Lcom/urbanairship/a;->a(Ljava/lang/reflect/Field;Ljava/lang/String;)I

    move-result v0

    .line 1379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1387
    :catch_1
    move-exception v0

    .line 1388
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "AirshipConfigOptions - Unable to set field \'"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\' because the field is not visible."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1334
    :catch_2
    move-exception v0

    .line 1335
    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AirshipConfigOptions - Unable to load properties file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1337
    if-eqz v1, :cond_0

    .line 1339
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1340
    :catch_3
    move-exception v0

    .line 1341
    const-string v1, "AirshipConfigOptions - Failed to close input stream."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1380
    :cond_6
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v11, :cond_7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v11, Ljava/lang/Long;

    if-ne v3, v11, :cond_9

    .line 1381
    :cond_7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1389
    :catch_4
    move-exception v0

    .line 1390
    :goto_5
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "AirshipConfigOptions - Unable to set field \'"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\' due to invalid configuration value."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 1337
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_8

    .line 1339
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1342
    :cond_8
    :goto_7
    throw v0

    .line 1382
    :cond_9
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1383
    const-string v3, "[, ]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1389
    :catch_5
    move-exception v0

    goto :goto_5

    .line 1385
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 1337
    :cond_b
    if-eqz v1, :cond_0

    .line 1339
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 1340
    :catch_6
    move-exception v0

    .line 1341
    const-string v1, "AirshipConfigOptions - Failed to close input stream."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1340
    :catch_7
    move-exception v1

    .line 1341
    const-string v2, "AirshipConfigOptions - Failed to close input stream."

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1337
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 1334
    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 572
    packed-switch p0, :pswitch_data_0

    .line 581
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 579
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/urbanairship/a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 537
    iget-object v1, p0, Lcom/urbanairship/a;->j:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/a;->j:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 542
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/urbanairship/a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/a;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 7

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 462
    const/4 v1, 0x1

    .line 463
    iget-boolean v0, p0, Lcom/urbanairship/a;->l:Z

    if-eqz v0, :cond_8

    const-string v0, "production"

    .line 465
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AirshipConfigOptions: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a valid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v1, v2

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 471
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AirshipConfigOptions: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a valid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " app secret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v1, v2

    .line 475
    :cond_3
    iget-boolean v0, p0, Lcom/urbanairship/a;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/urbanairship/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string v0, "Invalid config - analyticsServer is empty or null."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v1, v2

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 481
    const-string v0, "Invalid config - hostURL is empty or null."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v3, v2

    .line 486
    :goto_1
    if-nez v3, :cond_5

    .line 489
    const/4 v1, 0x0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_c

    aget-object v0, v4, v2

    .line 491
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_9

    .line 497
    :goto_3
    if-eqz v0, :cond_5

    const-class v1, Lcom/urbanairship/n;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AirshipConfigOptions - The public field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is missing an annotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 500
    const-string v0, "AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg: \n\t-keepattributes *Annotation*"

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/urbanairship/a;->l:Z

    if-eqz v0, :cond_a

    .line 510
    iget v0, p0, Lcom/urbanairship/a;->q:I

    invoke-static {v0}, Lcom/urbanairship/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/urbanairship/a;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid log level. Falling back to 6 ERROR."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/a;->q:I

    .line 521
    :cond_6
    :goto_5
    iget-wide v0, p0, Lcom/urbanairship/a;->n:J

    const-wide/32 v4, 0xea60

    cmp-long v0, v0, v4

    if-gez v0, :cond_b

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/urbanairship/a;->n:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may decrease battery life."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_7
    :goto_6
    return v3

    .line 463
    :cond_8
    const-string v0, "development"

    goto/16 :goto_0

    .line 490
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 515
    :cond_a
    iget v0, p0, Lcom/urbanairship/a;->p:I

    invoke-static {v0}, Lcom/urbanairship/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/urbanairship/a;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid log level. Falling back to 3 DEBUG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/a;->p:I

    goto :goto_5

    .line 523
    :cond_b
    iget-wide v0, p0, Lcom/urbanairship/a;->n:J

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/urbanairship/a;->n:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may provide less detailed analytic reports."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_3

    :cond_d
    move v3, v1

    goto/16 :goto_1
.end method

.method public final d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/urbanairship/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/urbanairship/a;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/a;->i:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/urbanairship/a;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 568
    :cond_1
    return-object v0
.end method
