.class final Lcom/urbanairship/push/l;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/push/j;

.field private final b:Lcom/urbanairship/push/g;

.field private final c:Lcom/urbanairship/push/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 6

    .prologue
    .line 78
    new-instance v3, Lcom/urbanairship/push/m;

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/urbanairship/push/m;-><init>(Lcom/urbanairship/a;)V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v4

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->k()Lcom/urbanairship/push/g;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/l;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/m;Lcom/urbanairship/push/j;Lcom/urbanairship/push/g;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/m;Lcom/urbanairship/push/j;Lcom/urbanairship/push/g;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 87
    iput-object p3, p0, Lcom/urbanairship/push/l;->c:Lcom/urbanairship/push/m;

    .line 88
    iput-object p4, p0, Lcom/urbanairship/push/l;->a:Lcom/urbanairship/push/j;

    .line 89
    iput-object p5, p0, Lcom/urbanairship/push/l;->b:Lcom/urbanairship/push/g;

    .line 90
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_0

    .line 245
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 248
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 264
    if-nez p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v2, "warnings"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v2, "warnings"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tag Groups warnings: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "Unable to parse tag group response"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Tag Groups error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 297
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2050
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2052
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2053
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2054
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2055
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    .line 2056
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2057
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 310
    :catch_0
    move-exception v1

    .line 311
    const-string v2, "Unable to parse pending tag groups."

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 2060
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2061
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 315
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1212
    :goto_1
    return-void

    .line 94
    :sswitch_0
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1112
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1117
    if-eqz v2, :cond_3

    .line 1118
    const-string v1, "com.urbanairship.push.PENDING_ADD_TAG_GROUPS"

    .line 1119
    const-string v0, "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS"

    .line 1125
    :goto_2
    invoke-direct {p0, v1}, Lcom/urbanairship/push/l;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1126
    invoke-direct {p0, v0}, Lcom/urbanairship/push/l;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1129
    const-string v5, "com.urbanairship.push.EXTRA_ADD_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1130
    if-eqz v5, :cond_1

    .line 1131
    invoke-static {v5, v3, v4}, Lcom/urbanairship/push/l;->a(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    .line 1132
    const-string v5, "com.urbanairship.push.EXTRA_ADD_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1136
    :cond_1
    const-string v5, "com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1137
    if-eqz v5, :cond_2

    .line 1138
    invoke-static {v5, v4, v3}, Lcom/urbanairship/push/l;->a(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    .line 1139
    const-string v5, "com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1143
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1144
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1121
    :cond_3
    const-string v1, "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY"

    .line 1122
    const-string v0, "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY"

    goto :goto_2

    .line 1150
    :cond_4
    if-eqz v2, :cond_6

    .line 1151
    iget-object v2, p0, Lcom/urbanairship/push/l;->a:Lcom/urbanairship/push/j;

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v2

    .line 1152
    if-eqz v2, :cond_a

    .line 1162
    iget-object v5, p0, Lcom/urbanairship/push/l;->c:Lcom/urbanairship/push/m;

    invoke-virtual {v5, v2, v3, v4}, Lcom/urbanairship/push/m;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/b/c;

    move-result-object v2

    .line 1180
    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v5

    invoke-static {v5}, Lcom/urbanairship/d/f;->b(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1184
    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1185
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1188
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/l;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1164
    :cond_6
    iget-object v2, p0, Lcom/urbanairship/push/l;->b:Lcom/urbanairship/push/g;

    invoke-virtual {v2}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 1165
    if-eqz v2, :cond_a

    .line 1175
    iget-object v2, p0, Lcom/urbanairship/push/l;->c:Lcom/urbanairship/push/m;

    iget-object v5, p0, Lcom/urbanairship/push/l;->b:Lcom/urbanairship/push/g;

    invoke-virtual {v5}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/urbanairship/push/m;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/b/c;

    move-result-object v2

    goto :goto_3

    .line 1194
    :cond_7
    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v5

    invoke-static {v5}, Lcom/urbanairship/d/f;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update tag groups succeeded with status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v2}, Lcom/urbanairship/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1206
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update tag groups failed with status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {v2}, Lcom/urbanairship/b/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v5

    const/16 v6, 0x193

    if-eq v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v2

    const/16 v5, 0x190

    if-ne v2, v5, :cond_a

    .line 1211
    :cond_9
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1215
    :cond_a
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1216
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/l;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1225
    :pswitch_1
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0}, Lcom/urbanairship/push/l;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x31a5a6d5 -> :sswitch_2
        0x395d4313 -> :sswitch_1
        0x3e781ee9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
