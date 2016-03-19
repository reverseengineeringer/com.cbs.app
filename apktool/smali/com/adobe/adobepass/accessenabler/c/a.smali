.class public final Lcom/adobe/adobepass/accessenabler/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[I


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/adobepass/accessenabler/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/adobepass/accessenabler/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/adobe/adobepass/accessenabler/c/b;

.field private h:Lcom/adobe/adobepass/accessenabler/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/adobepass/accessenabler/c/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/c/b;Lcom/adobe/adobepass/accessenabler/a/j;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    .line 66
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    .line 67
    return-void
.end method

.method private a(I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/a/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "StorageImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MVPD is not valid in storage v"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 150
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    const-string v1, "GenericRequestor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/a;

    .line 102
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->f:Ljava/util/Map;

    const-string v3, "GenericRequestor"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adobepass/accessenabler/a/k;

    .line 106
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/adobe/adobepass/accessenabler/c/a;->a(Lcom/adobe/adobepass/accessenabler/a/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/a;

    .line 108
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adobepass/accessenabler/a/k;

    .line 111
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/adobe/adobepass/accessenabler/c/a;->a(Lcom/adobe/adobepass/accessenabler/a/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adobepass/accessenabler/a/a;

    .line 114
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/k;

    .line 116
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/adobe/adobepass/accessenabler/c/a;->a(Lcom/adobe/adobepass/accessenabler/a/a;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/adobe/adobepass/accessenabler/c/a;->a(Lcom/adobe/adobepass/accessenabler/a/a;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    new-instance v3, Lcom/adobe/adobepass/accessenabler/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/adobe/adobepass/accessenabler/a/j;-><init>(Lcom/adobe/adobepass/accessenabler/api/b;)V

    .line 129
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v4, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;)V

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->c(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    iget-boolean v4, p0, Lcom/adobe/adobepass/accessenabler/c/a;->c:Z

    invoke-virtual {v3, v4, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->a(ZZ)V

    .line 136
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3, v0, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/a;Z)V

    .line 137
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3, v1, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/k;Z)V

    .line 140
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->k()V

    .line 143
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->g:Lcom/adobe/adobepass/accessenabler/c/b;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->h:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;)V

    .line 147
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 150
    goto/16 :goto_0

    :cond_5
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

.method private static a(Lcom/adobe/adobepass/accessenabler/a/a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 155
    :try_start_0
    const-string v3, "storage"

    .line 2241
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "key"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    if-eqz v1, :cond_1

    .line 2249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2251
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2252
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    const-string v2, "StorageImporter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to extract data from storage v"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 186
    :goto_1
    return v1

    .line 2256
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    if-ne p1, v12, :cond_3

    const-string v1, "authenticationToken"

    move-object v4, v1

    .line 159
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/Pair;

    move-object v3, v0

    .line 160
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "canAuthenticate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v12

    :goto_4
    iput-boolean v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->c:Z

    goto :goto_3

    .line 157
    :cond_3
    const-string v1, "authnToken"

    move-object v4, v1

    goto :goto_2

    :cond_4
    move v1, v11

    .line 161
    goto :goto_4

    .line 162
    :cond_5
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "currentMvpdId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    goto :goto_3

    .line 164
    :cond_6
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_8

    .line 3200
    :try_start_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "GenericRequestor"

    move-object v2, v1

    .line 3203
    :goto_5
    new-instance v6, Ljava/lang/String;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 3204
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/a;

    const/4 v3, 0x0

    invoke-direct {v1, v6, v3}, Lcom/adobe/adobepass/accessenabler/a/a;-><init>(Ljava/lang/String;Z)V

    .line 3205
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3206
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 167
    :catch_1
    move-exception v1

    .line 168
    :try_start_3
    const-string v2, "StorageImporter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to import authentication token. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v11

    .line 169
    goto/16 :goto_1

    .line 3200
    :cond_7
    :try_start_4
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    .line 171
    :cond_8
    :try_start_5
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "metadataToken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 4190
    :try_start_6
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "metadataToken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "GenericRequestor"

    move-object v2, v1

    .line 4193
    :goto_6
    new-instance v6, Ljava/lang/String;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 4194
    invoke-static {v6}, Lcom/adobe/adobepass/accessenabler/a/k;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v1

    .line 4195
    if-eqz v1, :cond_2

    .line 4196
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/c/a;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 174
    :catch_2
    move-exception v1

    .line 175
    :try_start_7
    const-string v2, "StorageImporter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to import metadata token. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move v1, v11

    .line 176
    goto/16 :goto_1

    .line 4190
    :cond_9
    :try_start_8
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v7, "_metadataToken"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v1

    move-object v2, v1

    goto :goto_6

    .line 185
    :cond_a
    const-string v1, "StorageImporter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Extracted data from storage v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v12

    .line 186
    goto/16 :goto_1
.end method

.method private c(I)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".adobepassdb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    const v2, 0x10000010

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 219
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "storage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v9

    .line 237
    :goto_1
    return v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    move-object v0, v11

    :goto_2
    const-string v1, "StorageImporter"

    const-string v2, "Unable to initialize database for token import."

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/c/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v0, v10

    .line 234
    goto :goto_1

    .line 225
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v2, Lcom/adobe/adobepass/accessenabler/c/a;->b:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 71
    const-string v5, "StorageImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trying to import from storage v"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iput-boolean v1, p0, Lcom/adobe/adobepass/accessenabler/c/a;->c:Z

    .line 1269
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/adobe/adobepass/accessenabler/c/a;->d:Ljava/lang/String;

    .line 1270
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/adobe/adobepass/accessenabler/c/a;->e:Ljava/util/Map;

    .line 1271
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/adobe/adobepass/accessenabler/c/a;->f:Ljava/util/Map;

    .line 75
    invoke-direct {p0, v4}, Lcom/adobe/adobepass/accessenabler/c/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-direct {p0, v4}, Lcom/adobe/adobepass/accessenabler/c/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-direct {p0, v4}, Lcom/adobe/adobepass/accessenabler/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string v0, "StorageImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully imported tokens from storage v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1
    return-void

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "StorageImporter"

    const-string v1, "No valid tokens found in previous storage versions."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
