.class public Lcom/google/android/gms/analytics/internal/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/analytics/internal/q;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ju;

.field private final e:Lcom/google/android/gms/analytics/internal/ac;

.field private final f:Lcom/google/android/gms/analytics/internal/f;

.field private final g:Lcom/google/android/gms/b/e;

.field private final h:Lcom/google/android/gms/analytics/internal/m;

.field private final i:Lcom/google/android/gms/analytics/internal/ag;

.field private final j:Lcom/google/android/gms/analytics/internal/l;

.field private final k:Lcom/google/android/gms/analytics/internal/i;

.field private final l:Lcom/google/android/gms/analytics/a;

.field private final m:Lcom/google/android/gms/analytics/internal/y;

.field private final n:Lcom/google/android/gms/analytics/internal/a;

.field private final o:Lcom/google/android/gms/analytics/internal/v;

.field private final p:Lcom/google/android/gms/analytics/internal/af;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/internal/r;)V
    .locals 7

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/r;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Application;

    const-string v2, "getApplicationContext didn\'t return the application"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/r;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->c:Landroid/content/Context;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/jv;->d()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    .line 0
    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->d:Lcom/google/android/gms/internal/ju;

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/r;->b(Lcom/google/android/gms/analytics/internal/q;)Lcom/google/android/gms/analytics/internal/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->e:Lcom/google/android/gms/analytics/internal/ac;

    .line 2000
    new-instance v1, Lcom/google/android/gms/analytics/internal/f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/f;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/f;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->f:Lcom/google/android/gms/analytics/internal/f;

    .line 3000
    sget-boolean v1, Lcom/google/android/gms/common/internal/h;->a:Z

    .line 0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/q;->e()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google Analytics "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/analytics/internal/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/f;->d(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/r;->f(Lcom/google/android/gms/analytics/internal/q;)Lcom/google/android/gms/analytics/internal/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/i;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    .line 4000
    new-instance v1, Lcom/google/android/gms/analytics/internal/l;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/l;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/l;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->j:Lcom/google/android/gms/analytics/internal/l;

    .line 5000
    new-instance v1, Lcom/google/android/gms/analytics/internal/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/m;-><init>(Lcom/google/android/gms/analytics/internal/q;Lcom/google/android/gms/analytics/internal/r;)V

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/r;->a(Lcom/google/android/gms/analytics/internal/q;)Lcom/google/android/gms/analytics/internal/y;

    move-result-object v2

    .line 6000
    new-instance v3, Lcom/google/android/gms/analytics/internal/a;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/internal/a;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 7000
    new-instance v4, Lcom/google/android/gms/analytics/internal/v;

    invoke-direct {v4, p0}, Lcom/google/android/gms/analytics/internal/v;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 8000
    new-instance v5, Lcom/google/android/gms/analytics/internal/af;

    invoke-direct {v5, p0}, Lcom/google/android/gms/analytics/internal/af;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 9000
    invoke-static {v0}, Lcom/google/android/gms/b/e;->a(Landroid/content/Context;)Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 10000
    new-instance v6, Lcom/google/android/gms/analytics/internal/q$1;

    invoke-direct {v6, p0}, Lcom/google/android/gms/analytics/internal/q$1;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 0
    invoke-virtual {v0, v6}, Lcom/google/android/gms/b/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->g:Lcom/google/android/gms/b/e;

    .line 11000
    new-instance v0, Lcom/google/android/gms/analytics/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/a;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/y;->y()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/q;->m:Lcom/google/android/gms/analytics/internal/y;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/a;->y()V

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/q;->n:Lcom/google/android/gms/analytics/internal/a;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/v;->y()V

    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/q;->o:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/internal/af;->y()V

    iput-object v5, p0, Lcom/google/android/gms/analytics/internal/q;->p:Lcom/google/android/gms/analytics/internal/af;

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/r;->e(Lcom/google/android/gms/analytics/internal/q;)Lcom/google/android/gms/analytics/internal/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/ag;->y()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/q;->i:Lcom/google/android/gms/analytics/internal/ag;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/m;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/q;->h:Lcom/google/android/gms/analytics/internal/m;

    .line 12000
    sget-boolean v2, Lcom/google/android/gms/common/internal/h;->a:Z

    .line 0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/q;->e()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v2

    const-string v3, "Device AnalyticsService version"

    sget-object v4, Lcom/google/android/gms/analytics/internal/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/f;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->a()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->l:Lcom/google/android/gms/analytics/a;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/m;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/q;->e()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google Analytics "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/analytics/internal/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/f;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/q;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/q;->a:Lcom/google/android/gms/analytics/internal/q;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/analytics/internal/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/q;->a:Lcom/google/android/gms/analytics/internal/q;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/jv;->d()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/analytics/internal/r;

    invoke-direct {v5, v4}, Lcom/google/android/gms/analytics/internal/r;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/analytics/internal/q;

    invoke-direct {v4, v5}, Lcom/google/android/gms/analytics/internal/q;-><init>(Lcom/google/android/gms/analytics/internal/r;)V

    sput-object v4, Lcom/google/android/gms/analytics/internal/q;->a:Lcom/google/android/gms/analytics/internal/q;

    invoke-static {}, Lcom/google/android/gms/analytics/a;->c()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/aj;->Q:Lcom/google/android/gms/analytics/internal/aj$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/aj$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/q;->e()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/internal/f;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/q;->a:Lcom/google/android/gms/analytics/internal/q;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/google/android/gms/analytics/internal/o;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/o;->w()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static r()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/b/e;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ju;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->d:Lcom/google/android/gms/internal/ju;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/analytics/internal/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->e:Lcom/google/android/gms/analytics/internal/ac;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/analytics/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->f:Lcom/google/android/gms/analytics/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->f:Lcom/google/android/gms/analytics/internal/f;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/analytics/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->f:Lcom/google/android/gms/analytics/internal/f;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/b/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->g:Lcom/google/android/gms/b/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->g:Lcom/google/android/gms/b/e;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/analytics/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->h:Lcom/google/android/gms/analytics/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->h:Lcom/google/android/gms/analytics/internal/m;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/analytics/internal/ag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->i:Lcom/google/android/gms/analytics/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->i:Lcom/google/android/gms/analytics/internal/ag;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/analytics/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->l:Lcom/google/android/gms/analytics/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->l:Lcom/google/android/gms/analytics/a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->b()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->l:Lcom/google/android/gms/analytics/a;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/analytics/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->j:Lcom/google/android/gms/analytics/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->j:Lcom/google/android/gms/analytics/internal/l;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/analytics/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/analytics/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/i;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->k:Lcom/google/android/gms/analytics/internal/i;

    goto :goto_0
.end method

.method public final n()Lcom/google/android/gms/analytics/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->n:Lcom/google/android/gms/analytics/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->n:Lcom/google/android/gms/analytics/internal/a;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/analytics/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->m:Lcom/google/android/gms/analytics/internal/y;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->m:Lcom/google/android/gms/analytics/internal/y;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/analytics/internal/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->o:Lcom/google/android/gms/analytics/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->o:Lcom/google/android/gms/analytics/internal/v;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/analytics/internal/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/q;->p:Lcom/google/android/gms/analytics/internal/af;

    return-object v0
.end method
