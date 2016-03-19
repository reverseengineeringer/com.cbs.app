.class final Lcom/adobe/mobile/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:J

.field protected static volatile b:Z

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adobe/mobile/l;->a:J

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/mobile/l;->b:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->e:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->f:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->g:Ljava/lang/Object;

    .line 267
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/l;->h:Ljava/lang/Object;

    return-void
.end method

.method private static a(JJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 563
    sub-long v0, p2, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    sput-boolean v4, Lcom/adobe/mobile/l;->b:Z

    .line 168
    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/am;->a(Ljava/lang/Long;)V

    .line 171
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    const-string v1, "ADMS_SuccessfulClose"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "ADMS_PauseDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/am;->u()Landroid/app/Activity;
    :try_end_1
    .catch Lcom/adobe/mobile/am$a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/adobe/mobile/ae;->b()V

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "Lifecycle - Error updating lifecycle pause data (%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    sget-boolean v0, Lcom/adobe/mobile/l;->b:Z

    if-eqz v0, :cond_0

    .line 4340
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/mobile/l;->b:Z

    .line 57
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;
    :try_end_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 65
    const/4 v0, 0x0

    .line 67
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/am;->u()Landroid/app/Activity;
    :try_end_1
    .catch Lcom/adobe/mobile/am$a; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v0

    .line 72
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/adobe/mobile/ae;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/adobe/mobile/am;->a(Landroid/app/Activity;)V

    .line 80
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v2

    .line 81
    const-string v0, "ADMS_PauseDate"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 82
    invoke-virtual {v2}, Lcom/adobe/mobile/af;->k()I

    move-result v3

    .line 84
    const/4 v0, 0x1

    .line 87
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 88
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 89
    const-string v5, "ADMS_SessionStart"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 92
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    sput-wide v8, Lcom/adobe/mobile/l;->a:J

    .line 94
    invoke-static {}, Lcom/adobe/mobile/f;->e()Lcom/adobe/mobile/f;

    move-result-object v5

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Lcom/adobe/mobile/f;->a(J)V

    .line 96
    if-ge v4, v3, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 100
    :try_start_2
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    const-string v3, "ADMS_SessionStart"

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v6

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lcom/adobe/mobile/am$b; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :goto_2
    const-string v0, "ADMS_SessionStart"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sput-wide v4, Lcom/adobe/mobile/l;->a:J

    .line 110
    const/4 v0, 0x0

    .line 114
    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 117
    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {v2}, Lcom/adobe/mobile/af;->p()V

    .line 123
    sget-object v0, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    invoke-static {}, Lcom/adobe/mobile/l;->c()V

    .line 127
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v0, "ADMS_InstallDate"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1345
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1346
    const-string v1, "a.InstallDate"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string v0, "a.InstallEvent"

    const-string v1, "InstallEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v0, "a.DailyEngUserEvent"

    const-string v1, "DailyEngUserEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v0, "a.MonthlyEngUserEvent"

    const-string v1, "MonthlyEngUserEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :try_start_3
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "utm_campaign"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1356
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "utm_source"

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "utm_medium"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "utm_term"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1359
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "utm_content"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1360
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "utm_campaign"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1361
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "trackingcode"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1363
    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 1365
    const-string v10, "a.referrer.campaign.source"

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const-string v0, "a.referrer.campaign.medium"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const-string v0, "a.referrer.campaign.term"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    const-string v0, "a.referrer.campaign.content"

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-string v0, "a.referrer.campaign.name"

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string v0, "a.referrer.campaign.trackingcode"

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    :cond_3
    :goto_3
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1387
    const-string v1, "ADMS_InstallDate"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Lcom/adobe/mobile/am$b; {:try_start_3 .. :try_end_3} :catch_3

    .line 3423
    :cond_4
    :goto_4
    invoke-static {}, Lcom/adobe/mobile/am;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3424
    const-string v0, "a.LaunchEvent"

    const-string v1, "LaunchEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3425
    const-string v0, "a.OSVersion"

    invoke-static {}, Lcom/adobe/mobile/am;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3428
    const-string v1, "a.HourOfDay"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3431
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3432
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3433
    const-string v1, "a.DayOfWeek"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3436
    :try_start_4
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3437
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "ADMS_Launches"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3438
    const-string v6, "a.Launches"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3440
    const-string v6, "ADMS_Launches"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3441
    const-string v1, "ADMS_LastDateUsed"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Lcom/adobe/mobile/am$b; {:try_start_4 .. :try_end_4} :catch_7

    .line 141
    :goto_5
    invoke-static {v3}, Lcom/adobe/mobile/l;->a(Ljava/util/Map;)V

    .line 4195
    :try_start_5
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4196
    new-instance v1, Lorg/json/JSONObject;

    sget-object v6, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4197
    const-string v6, "ADMS_LifecycleData"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Lcom/adobe/mobile/am$b; {:try_start_5 .. :try_end_5} :catch_8

    .line 151
    :goto_6
    invoke-virtual {v2}, Lcom/adobe/mobile/af;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const-string v0, "Lifecycle"

    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v0, v3, v6, v7}, Lcom/adobe/mobile/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 156
    :cond_5
    invoke-virtual {v2}, Lcom/adobe/mobile/af;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    sget-object v0, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/adobe/mobile/i;->a(Ljava/util/Map;)V

    .line 4325
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4327
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ADMS_SessionStart"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4328
    const-string v1, "ADMS_SessionStart"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4331
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    sput-wide v2, Lcom/adobe/mobile/l;->a:J

    .line 4334
    :cond_7
    const-string v1, "ADMS_LastVersion"

    invoke-static {}, Lcom/adobe/mobile/am;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4335
    const-string v1, "ADMS_SuccessfulClose"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4336
    const-string v1, "ADMS_PauseDate"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Lcom/adobe/mobile/am$b; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 4338
    :catch_0
    move-exception v0

    .line 4339
    const-string v1, "Lifecycle - Error resetting lifecycle flags (%s)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    const-string v1, "Lifecycle - Error starting lifecycle (%s)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 103
    :catch_2
    move-exception v0

    .line 104
    const-string v3, "Lifecycle - Error while updating start time (%s)."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1372
    :cond_8
    :try_start_7
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->n()I

    move-result v0

    if-lez v0, :cond_3

    .line 1374
    const-string v0, "a.referrer.campaign.source"

    const-string v1, "D=utm_source"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    const-string v0, "a.referrer.campaign.medium"

    const-string v1, "D=utm_medium"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string v0, "a.referrer.campaign.term"

    const-string v1, "D=utm_term"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    const-string v0, "a.referrer.campaign.content"

    const-string v1, "D=utm_content"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    const-string v0, "a.referrer.campaign.name"

    const-string v1, "D=utm_campaign"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    const-string v0, "a.referrer.campaign.trackingcode"

    const-string v1, "D=trackingcode"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/mobile/ai;->a(Z)V
    :try_end_7
    .catch Lcom/adobe/mobile/am$b; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 1389
    :catch_3
    move-exception v0

    .line 1390
    const-string v1, "Lifecycle - Error setting install data (%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1452
    :cond_9
    :try_start_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/M/d"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1454
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "ADMS_LastDateUsed"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1455
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1459
    const-string v0, "a.DailyEngUserEvent"

    const-string v1, "DailyEngUserEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :cond_a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/M"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1464
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1466
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1467
    const-string v0, "a.MonthlyEngUserEvent"

    const-string v1, "MonthlyEngUserEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    :cond_b
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADMS_InstallDate"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1472
    const-string v8, "a.DaysSinceFirstUse"

    invoke-static {v0, v1, v4, v5}, Lcom/adobe/mobile/l;->a(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const-string v0, "a.DaysSinceLastUse"

    invoke-static {v6, v7, v4, v5}, Lcom/adobe/mobile/l;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADMS_SuccessfulClose"

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1479
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1481
    const-string v1, "ADMS_PauseDate"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1482
    const-string v1, "ADMS_SessionStart"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1483
    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v6

    sput-wide v6, Lcom/adobe/mobile/l;->a:J

    .line 1484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1487
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADBLastKnownTimestampKey"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1489
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_f

    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/mobile/af;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/mobile/af;->i()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/mobile/af;->j()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1491
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1492
    const-string v7, "a.CrashEvent"

    const-string v8, "CrashEvent"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v7, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1496
    const-string v7, "Crash"

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    invoke-static {v7, v6, v0, v1}, Lcom/adobe/mobile/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 1503
    :goto_7
    invoke-static {}, Lcom/adobe/mobile/f;->e()Lcom/adobe/mobile/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/f;->f()V
    :try_end_8
    .catch Lcom/adobe/mobile/am$b; {:try_start_8 .. :try_end_8} :catch_5

    .line 2396
    :cond_c
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2398
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "ADMS_UpgradeDate"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2400
    invoke-static {}, Lcom/adobe/mobile/am;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ADMS_LastVersion"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2401
    const-string v1, "a.UpgradeEvent"

    const-string v8, "UpgradeEvent"

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    const-string v1, "ADMS_UpgradeDate"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2403
    const-string v1, "ADMS_LaunchesAfterUpgrade"

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2408
    :cond_d
    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_e

    .line 2409
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "ADMS_LaunchesAfterUpgrade"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2410
    const-string v6, "a.LaunchesSinceUpgrade"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    const-string v6, "ADMS_LaunchesAfterUpgrade"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2414
    :cond_e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Lcom/adobe/mobile/am$b; {:try_start_9 .. :try_end_9} :catch_6

    .line 2513
    :goto_a
    :try_start_a
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADMS_PauseDate"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2514
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/mobile/af;->k()I

    move-result v6

    .line 2515
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 2518
    if-lt v7, v6, :cond_4

    .line 2522
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ADMS_SessionStart"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2523
    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 2524
    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v6

    sput-wide v6, Lcom/adobe/mobile/l;->a:J

    .line 2527
    if-lez v0, :cond_12

    const v1, 0x93a80

    if-ge v0, v1, :cond_12

    .line 2529
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "ADBLastKnownTimestampKey"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2532
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_11

    .line 2533
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/af;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2534
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/af;->i()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2535
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/af;->j()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2537
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2538
    const-string v8, "a.PrevSessionLength"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    sget-object v0, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2542
    const-string v0, "SessionInfo"

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Lcom/adobe/mobile/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 2552
    :goto_b
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2554
    const-string v1, "ADMS_SessionStart"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a
    .catch Lcom/adobe/mobile/am$b; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_4

    .line 2556
    :catch_4
    move-exception v0

    .line 2557
    const-string v1, "Lifecycle - Error adding session length data (%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1499
    :cond_f
    :try_start_b
    const-string v0, "a.CrashEvent"

    const-string v1, "CrashEvent"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/adobe/mobile/am$b; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_7

    .line 1505
    :catch_5
    move-exception v0

    .line 1506
    const-string v1, "Lifecycle - Error setting non install data (%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2404
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_d

    .line 2405
    :try_start_c
    const-string v1, "a.DaysSinceLastUpgrade"

    invoke-static {v6, v7, v4, v5}, Lcom/adobe/mobile/l;->a(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lcom/adobe/mobile/am$b; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_9

    .line 2415
    :catch_6
    move-exception v0

    .line 2416
    const-string v1, "Lifecycle - Error setting upgrade data (%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2545
    :cond_11
    :try_start_d
    const-string v1, "a.PrevSessionLength"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 2549
    :cond_12
    const-string v1, "a.ignoredSessionLength"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lcom/adobe/mobile/am$b; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_b

    .line 3443
    :catch_7
    move-exception v0

    .line 3444
    const-string v1, "Lifecycle - Error adding generic data (%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 4200
    :catch_8
    move-exception v0

    .line 4201
    const-string v1, "Lifecycle - Error persisting lifecycle data (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_9
    move-exception v2

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 311
    invoke-static {}, Lcom/adobe/mobile/am;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 312
    const-string v1, "a.locale"

    invoke-static {}, Lcom/adobe/mobile/am;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 317
    invoke-static {}, Lcom/adobe/mobile/l;->c()V

    .line 318
    sget-object v0, Lcom/adobe/mobile/l;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    sget-object v3, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method protected static b()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    sget-object v3, Lcom/adobe/mobile/l;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    :try_start_0
    sget-object v1, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 250
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5294
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "ADMS_LifecycleData"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5296
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 5297
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5298
    invoke-static {v4}, Lcom/adobe/mobile/am;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/adobe/mobile/am$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 253
    sget-object v5, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5300
    :catch_0
    move-exception v1

    .line 5301
    :try_start_3
    const-string v4, "Lifecycle - Issue loading persisted lifecycle data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5302
    :catch_1
    move-exception v1

    .line 5303
    const-string v4, "Lifecycle - Issue loading persisted lifecycle data (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_1
    sget-object v1, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 262
    sget-object v1, Lcom/adobe/mobile/l;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/l;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 264
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
