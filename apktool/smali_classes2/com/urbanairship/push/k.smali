.class final Lcom/urbanairship/push/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/l;


# direct methods
.method public constructor <init>(Lcom/urbanairship/l;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    .line 86
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    .line 1125
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting user notifications enabled to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/k;->b(Z)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/k;->a(Z)V

    .line 1134
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-virtual {v0, v1, v3}, Lcom/urbanairship/l;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 466
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method final a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.TAGS"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.TAGS"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_0
.end method

.method final a(Z)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->b(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method final b(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 566
    return-void
.end method

.method final b(Z)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method final b()Z
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method final c()Z
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method final d()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method final e()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method final f()Z
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 234
    .line 1215
    iget-object v2, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v3, "com.urbanairship.push.QuietTime.ENABLED"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 234
    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v4, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v3, v4, v8}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v3

    .line 241
    iget-object v4, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v5, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v4, v5, v8}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v4

    .line 242
    iget-object v5, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v6, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v5, v6, v8}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v5

    .line 243
    iget-object v6, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v7, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v6

    .line 245
    if-eq v8, v3, :cond_0

    if-eq v8, v4, :cond_0

    if-eq v8, v5, :cond_0

    if-eq v8, v6, :cond_0

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 255
    invoke-virtual {v7, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v3, 0xc

    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v3, 0xd

    invoke-virtual {v7, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 260
    invoke-virtual {v3, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 262
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 267
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 274
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    invoke-virtual {v3, v9, v1}, Ljava/util/Calendar;->add(II)V

    .line 278
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.ALIAS"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method final h()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 376
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.push.TAGS"

    invoke-virtual {v0, v2}, Lcom/urbanairship/l;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 380
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_1
    return-object v1
.end method

.method final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()I
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.APID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 575
    iget-object v0, p0, Lcom/urbanairship/push/k;->a:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    invoke-virtual {v0, v2}, Lcom/urbanairship/l;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 579
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_1
    return-object v1
.end method
