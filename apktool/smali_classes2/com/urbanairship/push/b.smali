.class final Lcom/urbanairship/push/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/json/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/push/b$a;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->a(Lcom/urbanairship/push/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/b;->a:Z

    .line 196
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->b(Lcom/urbanairship/push/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/b;->b:Z

    .line 197
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->c(Lcom/urbanairship/push/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->d(Lcom/urbanairship/push/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->e(Lcom/urbanairship/push/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->f(Lcom/urbanairship/push/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/b;->f:Z

    .line 201
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->f(Lcom/urbanairship/push/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/urbanairship/push/b$a;->g(Lcom/urbanairship/push/b$a;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    .line 202
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->h(Lcom/urbanairship/push/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    .line 203
    invoke-static {p1}, Lcom/urbanairship/push/b$a;->i(Lcom/urbanairship/push/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    .line 204
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/b$a;B)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/urbanairship/push/b;-><init>(Lcom/urbanairship/push/b$a;)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/urbanairship/json/JsonValue;
    .locals 6

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v3, "device_type"

    iget-object v4, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v3, "opt_in"

    iget-boolean v4, p0, Lcom/urbanairship/push/b;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v3, "background"

    iget-boolean v4, p0, Lcom/urbanairship/push/b;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v3, "push_address"

    iget-object v4, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v3, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const-string v3, "alias"

    iget-object v4, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    const-string v3, "set_tags"

    iget-boolean v4, p0, Lcom/urbanairship/push/b;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-boolean v3, p0, Lcom/urbanairship/push/b;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 226
    const-string v3, "tags"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    const-string v3, "channel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    const-string v2, "apid"

    iget-object v3, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    const-string v2, "identity_hints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "ChannelRegistrationPayload - Failed to create channel registration payload as json"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    sget-object v0, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/urbanairship/push/b;

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    check-cast p1, Lcom/urbanairship/push/b;

    .line 280
    iget-boolean v1, p0, Lcom/urbanairship/push/b;->a:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/b;->a:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/urbanairship/push/b;->b:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/b;->b:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_2
    iget-object v1, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_3
    iget-boolean v1, p0, Lcom/urbanairship/push/b;->f:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/b;->f:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    if-nez v1, :cond_0

    :goto_4
    iget-object v1, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_5
    iget-object v1, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    iget-object v2, p1, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_6
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/urbanairship/push/b;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 303
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/urbanairship/push/b;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 304
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    .line 305
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 306
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v0, v3

    .line 307
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/urbanairship/push/b;->f:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v1

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    if-nez v1, :cond_8

    :goto_8
    add-int/2addr v0, v2

    .line 312
    return v0

    :cond_0
    move v0, v2

    .line 302
    goto :goto_0

    :cond_1
    move v0, v2

    .line 303
    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v1, v2

    .line 307
    goto :goto_5

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/b;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_6

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    .line 310
    :cond_8
    iget-object v1, p0, Lcom/urbanairship/push/b;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/urbanairship/push/b;->e()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
