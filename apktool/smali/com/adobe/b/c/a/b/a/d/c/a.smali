.class abstract Lcom/adobe/b/c/a/b/a/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/adobe/b/a/c;

.field protected b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to logger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/c/a;->a:Lcom/adobe/b/a/c;

    .line 38
    const-class v0, Lcom/adobe/b/c/a/b/a/d/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/c/a;->b:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method final a(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/b/c/a/b/a/d/a/e;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/a/e;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/a/e$a;

    .line 48
    iget-object v2, v0, Lcom/adobe/b/c/a/b/a/d/a/e$a;->a:Ljava/lang/Object;

    .line 49
    iget-object v5, v0, Lcom/adobe/b/c/a/b/a/d/a/e$a;->b:Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/adobe/b/c/a/b/a/d/a/e;->f()Ljava/lang/String;

    move-result-object v6

    .line 52
    const/4 v0, 0x0

    .line 54
    if-eqz v2, :cond_0

    .line 58
    instance-of v7, v2, Ljava/lang/Long;

    if-eqz v7, :cond_1

    move-object v0, v2

    .line 59
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0, v6, v5}, Lcom/adobe/b/c/a/b/a/d/c/a;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_1
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v6}, Lcom/adobe/b/c/a/b/a/d/c/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_2
    instance-of v7, v2, Ljava/lang/Double;

    if-eqz v7, :cond_3

    .line 63
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v1, v2, v6}, Lcom/adobe/b/c/a/b/a/d/c/a;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_3
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    .line 67
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v6, v5}, Lcom/adobe/b/c/a/b/a/d/c/a;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_4
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 69
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v6}, Lcom/adobe/b/c/a/b/a/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_5
    instance-of v5, v2, Lcom/adobe/b/c/a/b/a/d/a/e;

    if-eqz v5, :cond_6

    .line 71
    check-cast v2, Lcom/adobe/b/c/a/b/a/d/a/e;

    invoke-virtual {p0, v2}, Lcom/adobe/b/c/a/b/a/d/c/a;->b(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_6
    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/d/c/a;->a:Lcom/adobe/b/a/c;

    iget-object v6, p0, Lcom/adobe/b/c/a/b/a/d/c/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_processDao() - Unable to serialize DAO. Field: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ". Value: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v6}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_7
    return-object v3
.end method

.method abstract b(Lcom/adobe/b/c/a/b/a/d/a/e;)Ljava/lang/Object;
.end method
