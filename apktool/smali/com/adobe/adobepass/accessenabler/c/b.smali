.class public final Lcom/adobe/adobepass/accessenabler/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/adobe/adobepass/accessenabler/a/j;

.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->a:Landroid/content/Context;

    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".adobepassdb_3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    .line 71
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    .line 77
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access external storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 530
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 531
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    .line 533
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_3

    .line 535
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 536
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_3
    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/adobe/adobepass/accessenabler/c/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 501
    const-string v0, "currentMvpdId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    if-nez v0, :cond_1

    .line 503
    const/4 v0, 0x0

    .line 513
    :cond_0
    :goto_0
    return-object v0

    .line 505
    :cond_1
    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 508
    const-string v1, "canAuthenticate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 509
    const-string v1, "canAuthenticate"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_2
    const-string v1, "authzTokens"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    const-string v1, "authzTokens"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->l()Ljava/util/Map;

    move-result-object v0

    .line 518
    invoke-static {v0, p1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/util/Map;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    const-string v1, "requestorBucket"

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/util/Map;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    const-string v1, "passiveAuthnCookies"

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/adobe/adobepass/accessenabler/a/j;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/a$a;Z)Lcom/adobe/adobepass/accessenabler/a/a;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 126
    if-nez p1, :cond_0

    move-object v0, v3

    .line 164
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->l()Ljava/util/Map;

    move-result-object v6

    .line 130
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 131
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    .line 140
    :cond_2
    :try_start_0
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 141
    const-string v2, "currentMvpdId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    if-eqz v2, :cond_1

    .line 147
    if-eqz p2, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 151
    const-string v4, "authnToken"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    new-instance v4, Lcom/adobe/adobepass/accessenabler/a/a;

    const/4 v8, 0x0

    invoke-direct {v4, v1, v8}, Lcom/adobe/adobepass/accessenabler/a/a;-><init>(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p1, v2}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v1

    .line 156
    invoke-virtual {p1, v2}, Lcom/adobe/adobepass/accessenabler/a/j;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/adobe/adobepass/accessenabler/a/a$a;->c:Lcom/adobe/adobepass/accessenabler/a/a$a;

    if-eq p3, v2, :cond_4

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/g;->e()Z

    move-result v1

    sget-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->a:Lcom/adobe/adobepass/accessenabler/a/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p3, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-ne v1, v0, :cond_1

    :cond_4
    move-object v0, v4

    .line 158
    goto :goto_0

    :cond_5
    move v0, v5

    .line 156
    goto :goto_2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    const-string v2, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "No valid authn token found for requestor "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    .line 164
    goto/16 :goto_0
.end method

.method public final a(Z)Lcom/adobe/adobepass/accessenabler/a/a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 169
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    const-string v3, "authnToken"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    if-eqz v0, :cond_4

    .line 176
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/a;

    invoke-direct {v1, v0, v4}, Lcom/adobe/adobepass/accessenabler/a/a;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 179
    :goto_0
    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_1
    return-object v0

    .line 182
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    sget-object v3, Lcom/adobe/adobepass/accessenabler/a/a$a;->b:Lcom/adobe/adobepass/accessenabler/a/a$a;

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/a$a;Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_3

    .line 190
    const-string v0, "currentMvpdId"

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 194
    const-string v0, "canAuthenticate"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "authnToken"

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 201
    const-string v0, "userMeta"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    const-string v4, "userMeta"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "preAuthorizedResources"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v3, "preAuthorizedResources"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/b;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p1, :cond_0

    move-object v0, v1

    .line 238
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    move-object v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    const-string v2, "authzTokens"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 233
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    if-nez v0, :cond_2

    move-object v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/adobe/adobepass/accessenabler/a/b;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->m()Ljava/util/Map;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 100
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/a;)V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/a;Z)V

    .line 287
    return-void
.end method

.method protected final a(Lcom/adobe/adobepass/accessenabler/a/a;Z)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 437
    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v1, "authnToken"

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    if-eqz p2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    goto :goto_0
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/h;)V
    .locals 3

    .prologue
    .line 298
    .line 1484
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1485
    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 1489
    const-string v2, "preAuthorizedResources"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 299
    :cond_0
    return-void
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/j;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    .line 306
    return-void
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/k;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/k;Z)V

    .line 291
    return-void
.end method

.method protected final a(Lcom/adobe/adobepass/accessenabler/a/k;Z)V
    .locals 3

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->d()Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v0

    .line 449
    if-nez v0, :cond_2

    .line 455
    :goto_0
    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 459
    const-string v2, "userMeta"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    if-eqz p2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 465
    :cond_1
    return-void

    .line 452
    :cond_2
    invoke-virtual {v0, p1}, Lcom/adobe/adobepass/accessenabler/a/k;->a(Lcom/adobe/adobepass/accessenabler/a/k;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/b;)V
    .locals 2

    .prologue
    .line 294
    .line 1468
    if-eqz p1, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_0

    .line 1475
    const-string v1, "authzTokens"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1477
    invoke-virtual {p2}, Lcom/adobe/adobepass/accessenabler/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 295
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->m()Ljava/util/Map;

    move-result-object v1

    .line 87
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 408
    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const-string v1, "canAuthenticate"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    if-eqz p2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/adobe/adobepass/accessenabler/c/b;->c(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(ZZ)V

    .line 279
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 108
    :cond_0
    const-string v2, "canAuthenticate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 114
    const-string v1, "currentMvpdId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 419
    const-string v2, "currentMvpdId"

    .line 421
    if-eqz p1, :cond_1

    .line 422
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final d()Lcom/adobe/adobepass/accessenabler/a/k;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const-string v1, "userMeta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/a/k;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Lcom/adobe/adobepass/accessenabler/a/h;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    move-object v0, v1

    .line 247
    :goto_0
    return-object v0

    .line 246
    :cond_0
    const-string v2, "preAuthorizedResources"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/h;

    invoke-direct {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/h;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->a:Landroid/content/Context;

    const-string v1, "adobePassStorageKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    const-string v1, "previouslyImported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 255
    if-ge v1, v3, :cond_1

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v1, "previouslyImported"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    const/4 v1, 0x0

    sget-object v2, Lcom/adobe/adobepass/accessenabler/a/a$a;->c:Lcom/adobe/adobepass/accessenabler/a/a$a;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/a$a;Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    const-string v0, "StorageManager"

    const-string v1, "Starting import."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/adobe/adobepass/accessenabler/c/a;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-direct {v0, p0, v1}, Lcom/adobe/adobepass/accessenabler/c/a;-><init>(Lcom/adobe/adobepass/accessenabler/c/b;Lcom/adobe/adobepass/accessenabler/a/j;)V

    .line 265
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/a;->a()V

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v0, "StorageManager"

    const-string v1, "No need to perform import, a valid token for the current requestor already exists."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token import operation failed with exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    :try_start_1
    const-string v0, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Previous import was performed by v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 316
    const-string v0, "StorageManager"

    const-string v1, "External storage unavailable for read operation."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 321
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 325
    if-eqz v0, :cond_2

    .line 326
    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    .line 328
    :cond_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while reading from storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 337
    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const-string v2, "authnToken"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/adobe/adobepass/accessenabler/a/a;-><init>(Ljava/lang/String;Z)V

    .line 347
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->e()Z

    move-result v3

    .line 348
    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 352
    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->l()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 348
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "StorageManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->l()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->b:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    const-string v1, "authnToken"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "userMeta"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "preAuthorizedResources"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "authzTokens"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 376
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    .line 381
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 382
    return-void
.end method

.method protected final k()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 389
    const-string v0, "StorageManager"

    const-string v1, "External storage unavailable for write operation."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 394
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 397
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/c/b;->c:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 400
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while writing to storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
