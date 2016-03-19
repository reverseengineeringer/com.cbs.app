.class public final Lcom/nielsen/app/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/i$a;
    }
.end annotation


# static fields
.field private static c:Lcom/nielsen/app/sdk/i;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nielsen/app/sdk/i$a;

.field private d:Lcom/nielsen/app/sdk/h;

.field private e:Lcom/nielsen/app/sdk/b;

.field private f:Lcom/nielsen/app/sdk/w;

.field private g:Lcom/nielsen/app/sdk/h$c;

.field private h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/locks/Lock;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/i;->c:Lcom/nielsen/app/sdk/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->b:Lcom/nielsen/app/sdk/i$a;

    .line 198
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->d:Lcom/nielsen/app/sdk/h;

    .line 199
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    .line 200
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->f:Lcom/nielsen/app/sdk/w;

    .line 219
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->g:Lcom/nielsen/app/sdk/h$c;

    .line 342
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->h:Ljava/util/concurrent/BlockingQueue;

    .line 343
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->a:Ljava/util/Map;

    .line 415
    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    .line 173
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    .line 175
    invoke-static {}, Lcom/nielsen/app/sdk/o;->o()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->d:Lcom/nielsen/app/sdk/h;

    .line 177
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    .line 178
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->f:Lcom/nielsen/app/sdk/w;

    .line 180
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    const-string v1, "nol_stationIdDefault"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static declared-synchronized a()Lcom/nielsen/app/sdk/i;
    .locals 2

    .prologue
    .line 191
    const-class v1, Lcom/nielsen/app/sdk/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/i;->c:Lcom/nielsen/app/sdk/i;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/nielsen/app/sdk/i;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/i;-><init>()V

    sput-object v0, Lcom/nielsen/app/sdk/i;->c:Lcom/nielsen/app/sdk/i;

    .line 194
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/i;->c:Lcom/nielsen/app/sdk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/i;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->h:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/nielsen/app/sdk/b$c;ILjava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v0, "nol_assetid"

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "nol_stationId"

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v0, 0x49

    const-string v1, "ProcessorId(%d) : Other thread already got the stationId (%s) for the assetId (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 340
    :goto_1
    return v0

    .line 256
    :cond_0
    :try_start_1
    const-string v1, ""

    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    .line 258
    const-string v1, "nol_stationIdDefault"

    invoke-virtual {p1, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    .line 260
    const-string v1, "nol_stationId"

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "nol_assetid"

    invoke-virtual {p1, v1, p3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b;->e()Z

    move-result v1

    .line 264
    if-nez v1, :cond_1

    .line 266
    const/16 v1, 0x49

    const-string v2, "ProcessorId(%d) : No config file yet. Use last stationId (%s) for the assetId (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 270
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->r()Z

    move-result v2

    .line 271
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 273
    :cond_2
    const/16 v1, 0x49

    const-string v2, "ProcessorId(%d) : AppSdk offline. Use last stationId (%s) for the assetId (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 278
    :cond_3
    :try_start_3
    const-string v0, "nol_stationURL"

    invoke-virtual {p1, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    const-string v1, "nol_stationURL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 284
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 286
    invoke-virtual {p1, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    .line 287
    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    const/16 v0, 0x49

    const-string v2, "Station Id on processor(%d). Sending message: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    new-instance v0, Lcom/nielsen/app/sdk/i$a;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->d:Lcom/nielsen/app/sdk/h;

    invoke-direct {v0, p0, v2}, Lcom/nielsen/app/sdk/i$a;-><init>(Lcom/nielsen/app/sdk/i;Lcom/nielsen/app/sdk/h;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->b:Lcom/nielsen/app/sdk/i$a;

    .line 1216
    new-instance v0, Lcom/nielsen/app/sdk/h$c;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->d:Lcom/nielsen/app/sdk/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "StationIdHandler"

    iget-object v4, p0, Lcom/nielsen/app/sdk/i;->b:Lcom/nielsen/app/sdk/i$a;

    invoke-direct {v0, v2, v3, v4}, Lcom/nielsen/app/sdk/h$c;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->g:Lcom/nielsen/app/sdk/h$c;

    .line 1217
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->g:Lcom/nielsen/app/sdk/h$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nielsen/app/sdk/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->h:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 297
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    iput-object p3, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    .line 301
    const-string v0, "nol_assetid"

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "nol_stationId"

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    const-string v1, "nol_assetid"

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/nielsen/app/sdk/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->e:Lcom/nielsen/app/sdk/b;

    const-string v1, "nol_stationId"

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/nielsen/app/sdk/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v0, 0x49

    const-string v1, "Station Id response on processor(%d). StationId(%s). AssedId(%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nielsen/app/sdk/i;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/nielsen/app/sdk/i;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 340
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_1

    .line 311
    :cond_6
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 313
    const/16 v0, 0xc

    const/16 v2, 0x45

    const-string v3, "Station ID request failed, %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 331
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 333
    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v3, 0x45

    const-string v4, "Could not get StaionId for assetId(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    goto :goto_3

    .line 318
    :cond_7
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 320
    const/16 v1, 0x49

    const-string v2, "Station ID URL parsing failed, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 337
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    iget-object v1, p0, Lcom/nielsen/app/sdk/i;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    throw v0

    .line 324
    :cond_8
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/i;->j:Ljava/lang/Boolean;

    .line 326
    const/16 v0, 0xc

    const/16 v1, 0x45

    const-string v2, "No Station ID URL to parse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method public final b(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->m:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/nielsen/app/sdk/i;->a:Ljava/util/Map;

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
