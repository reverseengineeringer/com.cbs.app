.class public Lcom/flurry/sdk/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bk$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bf$4;
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/bf;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/be;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/sdk/bg;

.field private final e:Ljava/lang/Object;

.field private f:J

.field private g:J

.field private h:Lcom/flurry/sdk/be;

.field private i:Lcom/flurry/sdk/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/bh;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/flurry/sdk/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/flurry/sdk/bg;

    invoke-direct {v0}, Lcom/flurry/sdk/bg;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bf;->d:Lcom/flurry/sdk/bg;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bf;->e:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/flurry/sdk/bf$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bf$1;-><init>(Lcom/flurry/sdk/bf;)V

    iput-object v0, p0, Lcom/flurry/sdk/bf;->i:Lcom/flurry/sdk/ah;

    .line 67
    new-instance v0, Lcom/flurry/sdk/bf$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bf$2;-><init>(Lcom/flurry/sdk/bf;)V

    iput-object v0, p0, Lcom/flurry/sdk/bf;->j:Lcom/flurry/sdk/ah;

    .line 97
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v1

    .line 99
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flurry/sdk/bf;->f:J

    .line 100
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/bf;->g:J

    .line 102
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 103
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/bf;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bf;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    .line 107
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bf;->i:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    .line 108
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bf;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/flurry/sdk/bf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/bf;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/flurry/sdk/bf;

    invoke-direct {v0}, Lcom/flurry/sdk/bf;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/bf;

    .line 33
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/bf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bf;Lcom/flurry/sdk/be;)V
    .locals 2

    .prologue
    .line 25
    .line 1135
    iget-object v1, p0, Lcom/flurry/sdk/bf;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->h:Lcom/flurry/sdk/be;

    if-ne v0, p1, :cond_0

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bf;->h:Lcom/flurry/sdk/be;

    .line 1139
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()I
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/ac;->a()Lcom/flurry/sdk/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bootstrap for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bf;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 300
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->g:J

    .line 302
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/bf;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/flurry/sdk/bf;->f:J

    return-wide v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/ac;->a()Lcom/flurry/sdk/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 168
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bf;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/flurry/sdk/be;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/flurry/sdk/bf;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->h:Lcom/flurry/sdk/be;

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/ac;->a()Lcom/flurry/sdk/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 183
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bf;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/be;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/flurry/sdk/be;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    invoke-virtual {p0}, Lcom/flurry/sdk/bf;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    .line 213
    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/flurry/sdk/ac;->a()Lcom/flurry/sdk/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session already started with context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session already started with context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/bf;->d:Lcom/flurry/sdk/bg;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->a()V

    .line 226
    invoke-virtual {p0}, Lcom/flurry/sdk/bf;->c()Lcom/flurry/sdk/be;

    move-result-object v0

    .line 227
    if-nez v0, :cond_2

    .line 228
    new-instance v0, Lcom/flurry/sdk/be;

    invoke-direct {v0}, Lcom/flurry/sdk/be;-><init>()V

    .line 230
    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session created for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/be;->a(Landroid/content/Context;)V

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    iget-object v1, p0, Lcom/flurry/sdk/bf;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1130
    :try_start_3
    iput-object v0, p0, Lcom/flurry/sdk/bf;->h:Lcom/flurry/sdk/be;

    .line 1131
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    :try_start_4
    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session started for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/flurry/sdk/be;->a()V

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1131
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method final declared-synchronized e()V
    .locals 5

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/bf;->g()I

    move-result v0

    .line 274
    if-lez v0, :cond_0

    .line 275
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session cannot be finalized, sessionContextCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bf;->c()Lcom/flurry/sdk/be;

    move-result-object v0

    .line 280
    if-nez v0, :cond_1

    .line 281
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    const-string v2, "Session cannot be finalized, current session not found"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    const-string v2, "Flurry session finalized"

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/flurry/sdk/be;->c()V

    .line 290
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/bf$3;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/bf$3;-><init>(Lcom/flurry/sdk/bf;Lcom/flurry/sdk/be;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bf;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    .line 248
    if-nez v0, :cond_1

    .line 249
    invoke-static {}, Lcom/flurry/sdk/ac;->a()Lcom/flurry/sdk/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session cannot be ended, session not found for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session cannot be ended, session not found for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 258
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session ended for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/flurry/sdk/be;->b()V

    .line 263
    invoke-direct {p0}, Lcom/flurry/sdk/bf;->g()I

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/flurry/sdk/bf;->d:Lcom/flurry/sdk/bg;

    iget-wide v2, p0, Lcom/flurry/sdk/bf;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/bg;->a(J)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->f:J

    goto :goto_0

    .line 267
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
