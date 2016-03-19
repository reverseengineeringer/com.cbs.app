.class public Lcom/nielsen/app/sdk/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field public c:Ljava/lang/Object;

.field d:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aa."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/f;->e:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aa."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 65
    const-string v0, "AppNuid"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->a:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    .line 69
    const-string v0, "nol_nuid"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->g:Ljava/lang/String;

    .line 70
    const-string v0, "nol_deviceId"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->h:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/nielsen/app/sdk/f;->i:I

    .line 73
    iput v2, p0, Lcom/nielsen/app/sdk/f;->j:I

    .line 74
    iput v3, p0, Lcom/nielsen/app/sdk/f;->k:I

    .line 75
    iput v4, p0, Lcom/nielsen/app/sdk/f;->l:I

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/nielsen/app/sdk/f;->m:I

    .line 77
    const/4 v0, 0x4

    iput v0, p0, Lcom/nielsen/app/sdk/f;->n:I

    .line 195
    iput v1, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->d:Ljava/lang/String;

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    .line 328
    iput-boolean v2, p0, Lcom/nielsen/app/sdk/f;->r:Z

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/f;->c()Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/common/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 121
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/f;->start()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 344
    const-string v0, ""

    .line 348
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 351
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1444
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1445
    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 1447
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1448
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1449
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1451
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 423
    const-string v1, "[^0-9A-Fa-f]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 425
    :goto_0
    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 430
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 209
    :goto_0
    monitor-exit v1

    .line 210
    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xc

    const/16 v5, 0x8

    const/16 v4, 0x10

    .line 258
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    :cond_0
    const-string v2, "MD5"

    .line 1368
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    if-nez v0, :cond_6

    .line 1398
    const/4 v0, 0x0

    .line 1370
    :cond_2
    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1373
    :cond_3
    invoke-static {}, Lcom/nielsen/app/sdk/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1376
    :cond_4
    const-string v0, ""

    .line 260
    :goto_0
    invoke-static {v2, v0}, Lcom/nielsen/app/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 264
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 270
    iget-object v4, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->q:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 1401
    :cond_6
    const-string v1, "[^0-9A-Fa-f]"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 1403
    :goto_2
    if-ge v1, v4, :cond_2

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_2

    .line 1378
    :cond_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    .line 1380
    :cond_8
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    :cond_9
    const-string v0, "0000000-0000-0000-0000-000000000000"

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/a$a;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 150
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/f;->r:Z

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 154
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_2
    const-string v0, "0000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 193
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/common/c; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    const/4 v0, 0x4

    :try_start_5
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 161
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :cond_6
    const-string v0, "0000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    goto :goto_0

    .line 161
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 186
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 190
    :cond_a
    const-string v1, "0000000-0000-0000-0000-000000000000"

    iput-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_b
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    throw v0

    .line 165
    :catch_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 167
    const/4 v0, 0x2

    :try_start_9
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 168
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 186
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_d
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    :cond_e
    const-string v0, "0000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_f
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    .line 172
    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 174
    const/4 v0, 0x3

    :try_start_c
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 175
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 186
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 190
    :cond_12
    const-string v0, "0000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_13
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0

    .line 179
    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 181
    const/4 v0, 0x1

    :try_start_f
    iput v0, p0, Lcom/nielsen/app/sdk/f;->o:I

    .line 182
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 186
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 187
    :cond_14
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 189
    :cond_15
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 190
    :cond_16
    const-string v0, "0000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    .line 192
    :cond_17
    iget-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/f;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 182
    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
.end method
