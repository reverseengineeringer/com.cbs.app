.class public Lcom/urbanairship/push/PushMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "open_mc_action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^mc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "open_mc_overlay_action"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^mco"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/PushMessage;->a:Ljava/util/List;

    .line 480
    new-instance v0, Lcom/urbanairship/push/PushMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/PushMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    .line 177
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.EXPIRATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification expiration time is \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring malformed expiration time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.PING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.CANONICAL_PUSH_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "_uamid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.ALERT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.PUSH_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 282
    :try_start_0
    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/urbanairship/json/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v5, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse action payload: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 299
    :goto_1
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/urbanairship/push/PushMessage;->a:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, "^mc"

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/actions/ActionValue;->a(Ljava/lang/String;)Lcom/urbanairship/actions/ActionValue;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 299
    goto :goto_1
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.interactive_actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.interactive_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.summary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.wearable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.local_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 3

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/urbanairship/d/g;->a(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 387
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.visibility"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/urbanairship/d/g;->a(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 403
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.public_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 434
    iget-object v1, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.in_app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.in_app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessage;->b(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    .line 437
    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessage$a;

    invoke-direct {v2, v1}, Lcom/urbanairship/push/iam/InAppMessage$a;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;

    move-result-object v2

    .line 444
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 445
    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessage;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/urbanairship/push/PushMessage;->a:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessage;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 447
    const-string v1, "^mc"

    new-instance v4, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 452
    :cond_2
    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage$a;->a()Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    const-string v2, "PushMessage - unable to create in-app message from push payload"

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 475
    return-void
.end method
