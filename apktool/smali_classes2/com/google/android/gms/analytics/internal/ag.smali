.class public final Lcom/google/android/gms/analytics/internal/ag;
.super Lcom/google/android/gms/analytics/internal/o;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/app/AlarmManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/q;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/o;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/ag;->c:Landroid/app/AlarmManager;

    return-void
.end method

.method private f()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->m()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->m()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ag;->c:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/ag;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/google/android/gms/analytics/internal/ac;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->m()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/analytics/AnalyticsReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Receiver registered. Using alarm for local dispatch."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/ag;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->a:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->b:Z

    return v0
.end method

.method public final d()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->x()V

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->a:Z

    .line 0
    const-string v1, "Receiver not registered"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->a(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/analytics/internal/ac;->e()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->l()Lcom/google/android/gms/internal/ju;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ag;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/ag;->f()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ag;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/ag;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ag;->c:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/ag;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
