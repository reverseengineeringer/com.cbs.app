.class public final Lcom/adobe/b/c/a/b/a/d/c/b;
.super Lcom/adobe/b/c/a/b/a/d/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/c;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/adobe/b/c/a/b/a/d/c/a;-><init>(Lcom/adobe/b/a/c;)V

    .line 38
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "s:meta:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/d/c/b;->a:Lcom/adobe/b/a/c;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/d/c/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#serializeMap() - Unable to serialize string: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1190
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    return-object v0
.end method

.method private c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lcom/adobe/b/c/a/b/a/d/c/b;->a(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/util/ArrayList;

    move-result-object v3

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 97
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 158
    if-eqz p2, :cond_2

    .line 159
    const-string v0, "l"

    .line 163
    const-wide/16 v2, 0x0

    .line 164
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    .line 166
    :cond_0
    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/adobe/b/c/a/b/a/d/a/e$b;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adobe/b/c/a/b/a/d/a/e$b;->a:Lcom/adobe/b/c/a/b/a/d/a/e$b;

    if-ne p4, v1, :cond_1

    .line 167
    const-string v0, "h"

    .line 169
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "l:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "l:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    const-string v0, "l"

    .line 136
    if-eqz p2, :cond_1

    .line 137
    if-eqz p4, :cond_0

    instance-of v1, p4, Lcom/adobe/b/c/a/b/a/d/a/e$b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adobe/b/c/a/b/a/d/a/e$b;->a:Lcom/adobe/b/c/a/b/a/d/a/e$b;

    if-ne p4, v1, :cond_0

    .line 138
    const-string v0, "h"

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 177
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/d/c/b;->a:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/d/c/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serializeString() - Unable to serialize string: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/adobe/b/c/a/b/a/d/b/a;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/b/c/a/b/a/d/b/a;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->b()Lcom/adobe/b/c/a/b/a/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->b()Lcom/adobe/b/c/a/b/a/d/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->a()Lcom/adobe/b/c/a/b/a/d/a/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->a()Lcom/adobe/b/c/a/b/a/d/a/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->c()Lcom/adobe/b/c/a/b/a/d/a/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->c()Lcom/adobe/b/c/a/b/a/d/a/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->d()Lcom/adobe/b/c/a/b/a/d/a/i;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->d()Lcom/adobe/b/c/a/b/a/d/a/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->g()Lcom/adobe/b/c/a/b/a/d/a/j;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->g()Lcom/adobe/b/c/a/b/a/d/a/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_6
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->h()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->h()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_7
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->i()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 70
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 71
    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_9

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v1, "serializedOutput"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "callback"

    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/b/a;->j()Lcom/adobe/b/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method final synthetic b(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/b/c/a/b/a/d/c/b;->c(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
