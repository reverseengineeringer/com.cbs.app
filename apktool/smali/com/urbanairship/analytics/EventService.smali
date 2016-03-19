.class public Lcom/urbanairship/analytics/EventService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:J


# instance fields
.field private final b:Lcom/urbanairship/analytics/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/urbanairship/analytics/EventService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "EventService"

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/urbanairship/analytics/i;

    invoke-direct {v0}, Lcom/urbanairship/analytics/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;Lcom/urbanairship/analytics/i;)V

    .line 110
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/analytics/i;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 114
    iput-object p2, p0, Lcom/urbanairship/analytics/EventService;->b:Lcom/urbanairship/analytics/i;

    .line 115
    return-void
.end method

.method private static a()J
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->d()Lcom/urbanairship/analytics/d;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/urbanairship/analytics/d;->e()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/urbanairship/analytics/d;->d()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    sget-wide v2, Lcom/urbanairship/analytics/EventService;->a:J

    add-long/2addr v0, v2

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p1

    .line 281
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->d()Lcom/urbanairship/analytics/d;

    move-result-object v6

    .line 282
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 285
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v8, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v1, "com.urbanairship.analytics.SEND"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v6}, Lcom/urbanairship/analytics/d;->f()J

    move-result-wide v8

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-ltz v1, :cond_0

    cmp-long v1, v8, v4

    if-lez v1, :cond_3

    :cond_0
    move v1, v3

    .line 294
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v8, 0x20000000

    invoke-static {v1, v2, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v8, 0x8000000

    invoke-static {v1, v2, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 299
    invoke-virtual {v6, v4, v5}, Lcom/urbanairship/analytics/d;->b(J)V

    .line 303
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 291
    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 120
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventService - Received intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventService - Unrecognized intent action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :sswitch_0
    const-string v2, "com.urbanairship.analytics.DELETE_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.analytics.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 134
    :pswitch_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->c()Lcom/urbanairship/analytics/j;

    move-result-object v0

    .line 1188
    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2155
    :pswitch_1
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->d()Lcom/urbanairship/analytics/d;

    move-result-object v7

    .line 2156
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->c()Lcom/urbanairship/analytics/j;

    move-result-object v0

    .line 2158
    const-string v1, "EXTRA_EVENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2159
    const-string v1, "EXTRA_EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2160
    const-string v1, "EXTRA_EVENT_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2161
    const-string v1, "EXTRA_EVENT_TIME_STAMP"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2162
    const-string v1, "EXTRA_EVENT_SESSION_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2164
    if-eqz v8, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    .line 2170
    invoke-virtual {v0}, Lcom/urbanairship/analytics/j;->a()I

    move-result v1

    invoke-virtual {v7}, Lcom/urbanairship/analytics/d;->a()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 2265
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "session_id"

    aput-object v3, v2, v1

    .line 2266
    const-string v1, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    const-string v6, "0, 1"

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/analytics/j;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2268
    if-nez v2, :cond_5

    .line 2269
    const-string v1, "EventDataManager - Unable to query database."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2270
    const/4 v1, 0x0

    .line 2173
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 3248
    const-string v2, "events"

    const-string v3, "session_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3250
    if-lez v2, :cond_3

    .line 3251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EventDataManager - Deleted "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows with session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3349
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3350
    const-string v2, "type"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    const-string v2, "event_id"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    const-string v2, "data"

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    const-string v2, "time"

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    const-string v2, "session_id"

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    const-string v2, "event_size"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3357
    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/analytics/j;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2178
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 2179
    const-string v0, "EventService - Unable to insert event into database."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2183
    :cond_4
    const-string v0, "location"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2185
    invoke-virtual {v7}, Lcom/urbanairship/analytics/d;->e()J

    move-result-wide v2

    .line 2186
    sub-long/2addr v0, v2

    .line 2187
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v2

    iget-wide v2, v2, Lcom/urbanairship/a;->n:J

    .line 2188
    sub-long v0, v2, v0

    .line 2190
    invoke-static {}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 2191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocationEvent was inserted, but may not be updated until "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms have passed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    goto/16 :goto_0

    .line 2273
    :cond_5
    const/4 v1, 0x0

    .line 2274
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2275
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2277
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2194
    :cond_7
    invoke-static {}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    goto/16 :goto_0

    .line 2196
    :cond_8
    const-string v0, "region_event"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2197
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    goto/16 :goto_0

    .line 2199
    :cond_9
    invoke-static {}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    goto/16 :goto_0

    .line 4207
    :pswitch_2
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->d()Lcom/urbanairship/analytics/d;

    move-result-object v8

    .line 4208
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->c()Lcom/urbanairship/analytics/j;

    move-result-object v0

    .line 4210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/urbanairship/analytics/d;->a(J)V

    .line 4288
    const/4 v7, 0x0

    .line 4289
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "COUNT(*) as _cnt"

    aput-object v3, v2, v1

    .line 4290
    const-string v1, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/analytics/j;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4292
    if-nez v2, :cond_c

    .line 4293
    const-string v1, "EventDataManager - Unable to query events database."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 4294
    const/4 v1, -0x1

    .line 4214
    :goto_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4219
    if-lez v1, :cond_0

    .line 4224
    invoke-virtual {v0}, Lcom/urbanairship/analytics/j;->a()I

    move-result v2

    div-int/2addr v2, v1

    .line 4227
    invoke-virtual {v8}, Lcom/urbanairship/analytics/d;->b()I

    move-result v3

    div-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/analytics/j;->a(I)Ljava/util/Map;

    move-result-object v3

    .line 4229
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/analytics/i;->a(Ljava/util/Collection;)Lcom/urbanairship/analytics/k;

    move-result-object v4

    .line 4231
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/urbanairship/analytics/k;->a()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_e

    const/4 v2, 0x1

    .line 4233
    :goto_4
    if-eqz v2, :cond_f

    .line 4235
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/analytics/j;->a(Ljava/util/Set;)Z

    .line 4236
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    .line 4249
    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sub-int v0, v1, v0

    if-lez v0, :cond_b

    .line 4251
    :cond_a
    invoke-static {}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    .line 4254
    :cond_b
    if-eqz v4, :cond_0

    .line 4255
    invoke-virtual {v4}, Lcom/urbanairship/analytics/k;->b()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/urbanairship/analytics/d;->a(I)V

    .line 4256
    invoke-virtual {v4}, Lcom/urbanairship/analytics/k;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/urbanairship/analytics/d;->b(I)V

    .line 4257
    invoke-virtual {v4}, Lcom/urbanairship/analytics/k;->d()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/urbanairship/analytics/d;->c(I)V

    .line 4258
    invoke-virtual {v4}, Lcom/urbanairship/analytics/k;->e()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/urbanairship/analytics/d;->d(I)V

    goto/16 :goto_0

    .line 4297
    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4298
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4301
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4303
    if-nez v1, :cond_d

    const/4 v1, -0x1

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_3

    .line 4231
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 4239
    :cond_f
    sget-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_10

    .line 4240
    invoke-virtual {v8}, Lcom/urbanairship/analytics/d;->d()I

    move-result v0

    int-to-long v6, v0

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    .line 4245
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Analytic events failed to send. Will retry in "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ms."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4242
    :cond_10
    sget-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    const-wide/16 v10, 0x2

    mul-long/2addr v6, v10

    invoke-virtual {v8}, Lcom/urbanairship/analytics/d;->c()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    goto :goto_7

    :cond_11
    move-object v1, v7

    goto :goto_6

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b20e7d4 -> :sswitch_1
        -0x8f3dec3 -> :sswitch_2
        0x6eb156e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
