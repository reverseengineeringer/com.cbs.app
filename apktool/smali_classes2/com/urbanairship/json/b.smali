.class public final Lcom/urbanairship/json/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/urbanairship/json/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final a(Lorg/json/JSONStringer;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 185
    invoke-virtual {p0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 186
    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->a(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 189
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 142
    if-ne p1, p0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/urbanairship/json/b;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    check-cast p1, Lcom/urbanairship/json/b;

    iget-object v1, p1, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/urbanairship/json/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 168
    invoke-virtual {p0, v0}, Lcom/urbanairship/json/b;->a(Lorg/json/JSONStringer;)V

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "JsonList - Failed to create JSON String."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    const-string v0, ""

    goto :goto_0
.end method
