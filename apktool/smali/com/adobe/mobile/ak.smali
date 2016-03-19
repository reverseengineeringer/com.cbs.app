.class final Lcom/adobe/mobile/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Ljava/util/Map;Ljava/util/Map;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/adobe/mobile/ap;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42
    invoke-static {}, Lcom/adobe/mobile/am;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/adobe/mobile/am;->t()J

    move-result-wide v0

    .line 44
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 45
    const-string v3, "a.TimeSinceLaunch"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->m()Lcom/adobe/mobile/ag;

    move-result-object v0

    sget-object v1, Lcom/adobe/mobile/ag;->c:Lcom/adobe/mobile/ag;

    if-ne v0, v1, :cond_3

    .line 49
    const-string v0, "a.privacy.mode"

    const-string v1, "unknown"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 56
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-static {}, Lcom/adobe/mobile/ao;->a()Lcom/adobe/mobile/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/ao;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    :cond_4
    invoke-static {}, Lcom/adobe/mobile/am;->n()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    const-string v0, "aid"

    invoke-static {}, Lcom/adobe/mobile/am;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_5
    invoke-static {}, Lcom/adobe/mobile/am;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 68
    const-string v0, "vid"

    invoke-static {}, Lcom/adobe/mobile/am;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_6
    const-string v0, "ce"

    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/af;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    const-string v0, "ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_7
    const-string v0, "t"

    invoke-static {}, Lcom/adobe/mobile/am;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 79
    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    if-nez v0, :cond_9

    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 86
    :cond_9
    const-string v5, "&&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 87
    const/4 v5, 0x2

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 95
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/HashMap;

    .line 97
    invoke-static {}, Lcom/adobe/mobile/l;->b()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 95
    invoke-static {v0, v1, v4}, Lcom/adobe/mobile/ae;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 99
    const-string v0, "c"

    invoke-static {v2}, Lcom/adobe/mobile/am;->a(Ljava/util/Map;)Lcom/adobe/mobile/k;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    const-string v1, "ndh=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v3, v0}, Lcom/adobe/mobile/am;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 106
    const-string v1, "Analytics - Attempting to send request parameters(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/adobe/mobile/g;->a(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method
