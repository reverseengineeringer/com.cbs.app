.class public Lcom/cbs/app/analytics/impl/NewHockeyAppService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 26
    const-string v0, "7990f677bc8ffb027bb9b7fab538a24a"

    new-instance v1, Lcom/cbs/app/analytics/impl/NewHockeyAppService$1;

    invoke-direct {v1}, Lcom/cbs/app/analytics/impl/NewHockeyAppService$1;-><init>()V

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/b;->a(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/c;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    check-cast p0, Landroid/app/Activity;

    .line 1060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1062
    if-eqz p0, :cond_0

    .line 1139
    const-string v2, "HockeyApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1066
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1068
    invoke-static {v2}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    check-cast p0, Landroid/app/Activity;

    .line 2080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2082
    if-eqz p0, :cond_0

    .line 2124
    sget-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2125
    invoke-static {p0}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;)V

    .line 2127
    sget-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    .line 2086
    :goto_0
    if-eqz v0, :cond_0

    .line 2139
    const-string v0, "HockeyApp"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "startTime"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "usageTime"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2094
    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 2095
    sub-long/2addr v2, v4

    .line 2097
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "usageTime"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long/2addr v2, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2099
    invoke-static {v0}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 49
    :cond_0
    return-void

    .line 2132
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
