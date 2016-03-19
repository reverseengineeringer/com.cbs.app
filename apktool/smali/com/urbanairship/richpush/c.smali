.class public final Lcom/urbanairship/richpush/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/urbanairship/richpush/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field private c:Z

.field private d:Landroid/os/Bundle;

.field private e:J

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/urbanairship/json/JsonValue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/c;->a:Z

    .line 75
    return-void
.end method

.method static a(Lcom/urbanairship/json/JsonValue;ZZ)Lcom/urbanairship/richpush/c;
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v2, Lcom/urbanairship/richpush/c;

    invoke-direct {v2}, Lcom/urbanairship/richpush/c;-><init>()V

    .line 92
    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    .line 93
    const-string v1, "message_url"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    .line 94
    const-string v1, "message_body_url"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    .line 95
    const-string v1, "message_read_url"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    .line 96
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->k:Ljava/lang/String;

    .line 97
    const-string v1, "unread"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/urbanairship/richpush/c;->c:Z

    .line 98
    iput-object p0, v2, Lcom/urbanairship/richpush/c;->l:Lcom/urbanairship/json/JsonValue;

    .line 100
    const-string v1, "message_sent"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/urbanairship/richpush/c;->e:J

    .line 107
    :goto_1
    const-string v1, "message_expiry"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v1, v4, v5}, Lcom/urbanairship/d/c;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->f:Ljava/lang/Long;

    .line 113
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v2, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    .line 114
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {v0}, Lcom/urbanairship/json/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v4, v2, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/urbanairship/d/c;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/urbanairship/richpush/c;->e:J

    goto :goto_1

    .line 120
    :cond_3
    iget-object v4, v2, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_4
    iput-boolean p2, v2, Lcom/urbanairship/richpush/c;->a:Z

    .line 126
    iput-boolean p1, v2, Lcom/urbanairship/richpush/c;->b:Z

    move-object v0, v2

    .line 128
    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 46
    check-cast p1, Lcom/urbanairship/richpush/c;

    .line 2137
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    .line 3137
    iget-object v1, p1, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    .line 1317
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 46
    return v0
.end method

.method public final d()Ljava/util/Date;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/urbanairship/richpush/c;->e:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/urbanairship/richpush/c;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/urbanairship/richpush/c;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 332
    :cond_1
    :goto_0
    return v0

    .line 326
    :cond_2
    check-cast p1, Lcom/urbanairship/richpush/c;

    .line 328
    if-eq p0, p1, :cond_1

    .line 332
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    if-nez v2, :cond_3

    :goto_5
    iget-boolean v2, p0, Lcom/urbanairship/richpush/c;->b:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/c;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/urbanairship/richpush/c;->c:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/c;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/urbanairship/richpush/c;->a:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/c;->a:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/urbanairship/richpush/c;->e:J

    iget-wide v4, p1, Lcom/urbanairship/richpush/c;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/urbanairship/richpush/c;->b:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/c;->b:Z

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/b;->a(Ljava/util/Set;)V

    .line 256
    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x275

    .line 348
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 349
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 350
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 351
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 352
    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/urbanairship/richpush/c;->b:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    .line 353
    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/urbanairship/richpush/c;->c:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    .line 354
    mul-int/lit8 v0, v0, 0x25

    iget-boolean v3, p0, Lcom/urbanairship/richpush/c;->a:Z

    if-eqz v3, :cond_7

    :goto_7
    add-int/2addr v0, v1

    .line 355
    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/urbanairship/richpush/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/richpush/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v2

    .line 352
    goto :goto_5

    :cond_6
    move v0, v2

    .line 353
    goto :goto_6

    :cond_7
    move v1, v2

    .line 354
    goto :goto_7
.end method
