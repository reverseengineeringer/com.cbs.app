.class final Lcom/urbanairship/richpush/d;
.super Lcom/urbanairship/q;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/urbanairship/q;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private a(Ljava/util/Set;Landroid/content/ContentValues;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "|"

    invoke-static {p1, v1}, Lcom/urbanairship/d/h;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "message_id IN ( "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    const-string v4, ", "

    invoke-static {v2, v3, v4}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/urbanairship/json/JsonValue;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 302
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RichPushResolver - Unexpected message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_0
    return-object v0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v1

    .line 309
    const-string v2, "message_id"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RichPushResolver - Message is missing an ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    const-string v2, "timestamp"

    const-string v3, "message_sent"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "message_id"

    const-string v3, "message_id"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "message_url"

    const-string v3, "message_url"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "message_body_url"

    const-string v3, "message_body_url"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "message_read_url"

    const-string v3, "message_read_url"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "unread_orig"

    const-string v3, "unread"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const-string v2, "extra"

    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "raw_message_object"

    invoke-virtual {v1}, Lcom/urbanairship/json/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "message_expiry"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "expiration_timestamp"

    const-string v3, "message_expiry"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 275
    if-nez p0, :cond_0

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 291
    :goto_0
    return-object v0

    .line 279
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    move v0, v1

    .line 282
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    if-ne v0, v1, :cond_1

    .line 284
    const-string v0, "message_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 286
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 291
    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)I
    .locals 5

    .prologue
    .line 240
    invoke-static {p2}, Lcom/urbanairship/richpush/d;->a(Lcom/urbanairship/json/JsonValue;)Landroid/content/ContentValues;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    .line 242
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    const-string v2, "message_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 215
    invoke-static {v0}, Lcom/urbanairship/richpush/d;->a(Lcom/urbanairship/json/JsonValue;)Landroid/content/ContentValues;

    move-result-object v0

    .line 218
    const-string v3, "unread"

    const-string v4, "unread_orig"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, -0x1

    .line 229
    :goto_1
    return v0

    :cond_2
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p0, v2, v0}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_1
.end method

.method final a(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    const-string v1, "unread"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/d;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v4, v4}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 80
    if-nez v5, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :try_start_0
    const-string v1, "raw_message_object"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    const-string v1, "unread"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v4, v2

    .line 89
    :goto_2
    const-string v1, "deleted"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 91
    :goto_3
    invoke-static {v6}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/urbanairship/richpush/c;->a(Lcom/urbanairship/json/JsonValue;ZZ)Lcom/urbanairship/richpush/c;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    const-string v4, "RichPushResolver - Failed to parse message from the database."

    invoke-static {v4, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v4, v3

    .line 88
    goto :goto_2

    :cond_2
    move v1, v3

    .line 89
    goto :goto_3

    .line 100
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method final b(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    const-string v1, "unread_orig"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/d;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final b()Ljava/util/Set;
    .locals 2
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
    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/urbanairship/richpush/d;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "|"

    invoke-static {p1, v1}, Lcom/urbanairship/d/h;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "message_id IN ( "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    const-string v4, ", "

    invoke-static {v2, v3, v4}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final c()Ljava/util/Set;
    .locals 6
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
    .line 124
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unread = ? AND unread <> unread_orig"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/urbanairship/richpush/d;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/util/Set;
    .locals 6
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
    .line 136
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "deleted = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/urbanairship/richpush/d;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/urbanairship/richpush/d;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
