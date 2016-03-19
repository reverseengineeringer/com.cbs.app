.class public final Lcom/cbs/app/analytics/impl/OmnitureService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/cbs/app/analytics/impl/OmnitureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/analytics/impl/OmnitureService;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 44
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 45
    check-cast v0, Landroid/app/Activity;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/a/b/e;->a(Landroid/content/Context;)Lcom/adobe/a/b/e;

    move-result-object v1

    .line 47
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v2, "cbsicbsapp-dev,cbsicbsiall-dev"

    sput-object v2, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    .line 52
    :goto_0
    sget-object v2, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    const-string v3, "om.cbsi.com"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/adobe/a/b/e;->b(Landroid/content/Context;)V

    .line 56
    :cond_0
    return-void

    .line 50
    :cond_1
    const-string v2, "cbsicbsapp,cbsicbsiall"

    sput-object v2, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v6

    .line 62
    const/4 v3, 0x0

    .line 63
    if-eqz p0, :cond_b

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/e;->a(Landroid/content/Context;)Lcom/adobe/a/b/e;

    move-result-object v7

    .line 68
    invoke-virtual {v7}, Lcom/adobe/a/b/e;->k()V

    .line 69
    sget-object v5, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    .line 70
    const/4 v4, 0x0

    .line 73
    if-eqz p2, :cond_6

    .line 75
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object v1, v2

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    const-string v10, "evar_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 83
    const/16 v10, 0x5f

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 86
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10, v1}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 87
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    const-string v10, "prop_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 90
    const/16 v10, 0x5f

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 93
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10, v1}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 94
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    const-string v10, "appState"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 97
    invoke-virtual {p1, v1}, Lcom/cbs/app/analytics/Action;->setAppState(Ljava/lang/String;)V

    .line 98
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    const-string v10, "campaign"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 101
    invoke-virtual {v7, v1}, Lcom/adobe/a/b/e;->e(Ljava/lang/String;)V

    .line 102
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    const-string v1, "pageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v4, 0x1

    .line 109
    :cond_4
    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_1
    const-string v3, "rsid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move v0, v4

    :goto_2
    move v4, v0

    move-object v5, v1

    .line 116
    goto/16 :goto_0

    .line 117
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 120
    :cond_6
    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "cbscom:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_7
    invoke-virtual {v7, v0}, Lcom/adobe/a/b/e;->d(Ljava/lang/String;)V

    .line 126
    const-string v0, "om.cbsi.com"

    invoke-virtual {v7, v5, v0}, Lcom/adobe/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "androidphone"

    .line 129
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    const-string v0, "androidtablet"

    .line 133
    :cond_8
    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 134
    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 136
    const/4 v0, 0x2

    const-string v1, "us"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 137
    const/4 v0, 0x2

    const-string v1, "us"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 138
    const/4 v0, 0x3

    const-string v1, "native app"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 139
    const/4 v0, 0x3

    const-string v1, "native app"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 140
    const/4 v0, 0x5

    const-string v1, "cbsicbsapp"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 141
    const/4 v0, 0x5

    const-string v1, "cbsicbsapp"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 142
    const/16 v0, 0x9

    const-string v1, "D=User-Agent"

    invoke-virtual {v7, v0, v1}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 146
    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    if-eqz p2, :cond_9

    const-string v1, "appState"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "legacy event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_9
    if-eqz v4, :cond_c

    .line 158
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackAppState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/adobe/a/b/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eqz v3, :cond_a

    .line 161
    invoke-virtual {v7, v3}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 162
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 163
    const/16 v1, 0x2e

    invoke-virtual {v7, v1, v6}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 167
    :cond_a
    invoke-virtual {v7}, Lcom/adobe/a/b/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Lcom/adobe/a/b/e;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 195
    :cond_b
    :goto_3
    return-void

    .line 176
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackEvents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  evar46: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 178
    const/16 v1, 0x2e

    invoke-virtual {v7, v1, v6}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 180
    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 181
    invoke-virtual {v7, v3, v0}, Lcom/adobe/a/b/e;->b(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lcom/cbs/app/analytics/impl/OmnitureService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "omniture exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 183
    :cond_e
    if-nez v3, :cond_f

    .line 184
    :try_start_1
    const-string v3, "event19"

    .line 186
    :cond_f
    invoke-virtual {v7, v3}, Lcom/adobe/a/b/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_10
    move-object v1, v3

    goto/16 :goto_1

    :cond_11
    move v0, v4

    move-object v1, v5

    goto/16 :goto_2

    :cond_12
    move v0, v4

    move-object v3, v1

    move-object v1, v5

    goto/16 :goto_2
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 203
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/e;->a(Landroid/content/Context;)Lcom/adobe/a/b/e;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/cbs/app/analytics/impl/OmnitureService;->b:Ljava/lang/String;

    const-string v2, "om.cbsi.com"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/adobe/a/b/e;->b()V

    .line 209
    :cond_0
    return-void
.end method
