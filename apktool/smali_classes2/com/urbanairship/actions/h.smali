.class public final Lcom/urbanairship/actions/h;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v1

    const-string v2, "event_name"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 9

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 79
    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "event_value"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "event_value"

    invoke-virtual {v0, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->c()D

    move-result-wide v4

    .line 84
    const-string v3, "transaction_id"

    invoke-virtual {v0, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v6, "interaction_type"

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v6

    .line 86
    const-string v7, "interaction_id"

    invoke-virtual {v0, v7}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v7

    .line 87
    const-string v8, "properties"

    invoke-virtual {v0, v8}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v8

    .line 89
    new-instance v0, Lcom/urbanairship/analytics/g$a;

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/g$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/urbanairship/analytics/g$a;->b(Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/g$a;->a(Lcom/urbanairship/push/PushMessage;)Lcom/urbanairship/analytics/g$a;

    move-result-object v3

    .line 94
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v3, v2}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;

    .line 101
    :goto_0
    if-nez v7, :cond_0

    if-nez v6, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/b;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/c;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v3, v0}, Lcom/urbanairship/analytics/g$a;->a(Lcom/urbanairship/richpush/c;)Lcom/urbanairship/analytics/g$a;

    .line 110
    :cond_0
    if-eqz v8, :cond_9

    .line 111
    invoke-virtual {v8}, Lcom/urbanairship/json/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;Z)Lcom/urbanairship/analytics/g$a;

    goto :goto_1

    .line 1327
    :cond_2
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/urbanairship/analytics/g$a;->a(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/g$a;

    goto :goto_0

    .line 114
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->c()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;D)Lcom/urbanairship/analytics/g$a;

    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->d()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;J)Lcom/urbanairship/analytics/g$a;

    goto :goto_1

    .line 118
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/urbanairship/analytics/g$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;

    goto/16 :goto_1

    .line 120
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 124
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 125
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_7
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/urbanairship/analytics/g$a;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/urbanairship/analytics/g$a;

    goto/16 :goto_1

    .line 1533
    :cond_9
    invoke-virtual {v3}, Lcom/urbanairship/analytics/g$a;->a()Lcom/urbanairship/analytics/g;

    move-result-object v0

    .line 1534
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 137
    invoke-virtual {v0}, Lcom/urbanairship/analytics/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    invoke-static {}, Lcom/urbanairship/actions/e;->a()Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 140
    :goto_3
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to add custom event. Event is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Ljava/lang/Exception;)Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_3
.end method
