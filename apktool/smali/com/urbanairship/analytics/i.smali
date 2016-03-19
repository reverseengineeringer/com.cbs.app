.class final Lcom/urbanairship/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/b/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/urbanairship/b/b;

    invoke-direct {v0}, Lcom/urbanairship/b/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/i;-><init>(Lcom/urbanairship/b/b;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/b/b;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/urbanairship/analytics/i;->a:Lcom/urbanairship/b/b;

    .line 79
    return-void
.end method

.method static a(Ljava/util/Collection;)Lcom/urbanairship/analytics/k;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/analytics/k;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v1

    .line 1047
    :cond_1
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1051
    if-eqz v0, :cond_2

    .line 1052
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 93
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 100
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v6, "EventAPIClient - Invalid eventPayload."

    invoke-static {v6, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1054
    :cond_2
    const-string v0, "Error fetching network info."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    :cond_3
    move v0, v4

    .line 1058
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "warp9/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->u()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 120
    const-string v2, "amazon"

    .line 125
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 126
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v8

    .line 128
    const-string v9, "POST"

    invoke-static {v9, v0}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v9, "application/json"

    invoke-virtual {v0, v5, v9}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/b/a;->a()Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v5, "X-UA-Device-Family"

    invoke-virtual {v0, v5, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Sent-At"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.3f"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v4

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Package-Name"

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Package-Version"

    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-App-Key"

    invoke-virtual {v8}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-In-Production"

    iget-boolean v5, v8, Lcom/urbanairship/a;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Device-Model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-OS-Version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Lib-Version"

    invoke-static {}, Lcom/urbanairship/p;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Channel-Opted-In"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/j;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v2

    const-string v5, "X-UA-Channel-Background-Enabled"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Location-Permission"

    invoke-static {}, Lcom/urbanairship/analytics/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Location-Service-Enabled"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/p;->o()Lcom/urbanairship/location/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/location/e;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-Bluetooth-Status"

    .line 1250
    const-string v5, "android.permission.BLUETOOTH"

    invoke-static {v5}, Lcom/urbanairship/d/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1255
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 1258
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 128
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v2, "X-UA-User-ID"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 155
    const-string v3, "X-UA-Locale-Language"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    .line 157
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 158
    const-string v3, "X-UA-Locale-Country"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    .line 161
    :cond_5
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 162
    const-string v3, "X-UA-Locale-Variant"

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    .line 166
    :cond_6
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 168
    const-string v3, "X-UA-Channel-ID"

    invoke-virtual {v0, v3, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    .line 172
    const-string v3, "X-UA-Push-Address"

    invoke-virtual {v0, v3, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    .line 175
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EventAPIClient - Sending analytic events. Request:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EventAPIClient - Analytic event send response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    if-eqz v0, :cond_0

    new-instance v1, Lcom/urbanairship/analytics/k;

    invoke-direct {v1, v0}, Lcom/urbanairship/analytics/k;-><init>(Lcom/urbanairship/b/c;)V

    goto/16 :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EventAPIClient - Invalid analyticsServer: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 122
    :cond_8
    const-string v2, "android"

    goto/16 :goto_4

    :cond_9
    move v0, v4

    .line 128
    goto/16 :goto_5

    :cond_a
    move v3, v4

    .line 1258
    goto/16 :goto_6
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/urbanairship/d/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/urbanairship/d/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    const-string v0, "ALWAYS_ALLOWED"

    .line 196
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "NOT_ALLOWED"

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 209
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    const-string v0, "ALWAYS_ALLOWED"

    .line 239
    :goto_0
    return-object v0

    .line 213
    :cond_1
    const-string v0, "NOT_ALLOWED"

    goto :goto_0

    .line 218
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 219
    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 227
    :goto_1
    if-eqz v0, :cond_3

    .line 228
    invoke-static {}, Lcom/urbanairship/analytics/i;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_3
    const-string v0, "SYSTEM_LOCATION_DISABLED"

    goto :goto_0

    .line 235
    :cond_4
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 237
    invoke-static {}, Lcom/urbanairship/analytics/i;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_5
    const-string v0, "SYSTEM_LOCATION_DISABLED"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
