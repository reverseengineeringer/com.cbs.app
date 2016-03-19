.class final Lcom/urbanairship/analytics/f;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/analytics/h;-><init>(J)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "app_foreground"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    const-string v0, "connection_type"

    invoke-static {}, Lcom/urbanairship/analytics/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-static {}, Lcom/urbanairship/analytics/f;->g()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "connection_subtype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_0
    const-string v0, "carrier"

    invoke-static {}, Lcom/urbanairship/analytics/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v0, "time_zone"

    .line 1251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 1252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 74
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v0, "daylight_savings"

    .line 1261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 75
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v0, "notification_types"

    new-instance v2, Lorg/json/JSONArray;

    .line 2158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v4

    .line 2161
    invoke-virtual {v4}, Lcom/urbanairship/push/j;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2162
    invoke-virtual {v4}, Lcom/urbanairship/push/j;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2163
    const-string v5, "sound"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    :cond_1
    invoke-virtual {v4}, Lcom/urbanairship/push/j;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2166
    const-string v4, "vibrate"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "lib_version"

    invoke-static {}, Lcom/urbanairship/p;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "package_version"

    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v0, "push_id"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/analytics/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v0, "last_send_id"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v2, "AppForegroundEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
