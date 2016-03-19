.class public Lcom/adobe/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/a/b/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/adobe/b/a/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/b/a/b/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/a/b;",
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
            "Lcom/adobe/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/adobe/b/a/b/a;->c:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/b/a;->e:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/b/a;->f:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const-class v0, Lcom/adobe/b/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/a/b/a;->a:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/adobe/b/a/b/a;->b:Lcom/adobe/b/a/c;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 217
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    move-object v0, v1

    .line 228
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b;

    .line 223
    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/a/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#request > No request handler for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 225
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    .line 93
    monitor-exit p0

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/a/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1124
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :try_start_1
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    .line 105
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1130
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1131
    monitor-exit p0

    goto :goto_1

    .line 1149
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(Lcom/adobe/b/a/a;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 1237
    if-nez v1, :cond_3

    const-string v1, ""

    move-object v5, v1

    .line 1238
    :goto_1
    if-nez v4, :cond_4

    const-string v1, ""

    .line 1241
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 165
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b/a$a;

    .line 167
    invoke-virtual {v0}, Lcom/adobe/b/a/b/a$a;->a()Lcom/adobe/b/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v5, v1

    .line 1237
    goto :goto_1

    :cond_4
    move-object v1, v4

    .line 1238
    goto :goto_2

    .line 1244
    :cond_5
    :try_start_1
    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1245
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1248
    array-length v1, v5

    array-length v4, v7

    if-eq v1, v4, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v4, v3

    move v1, v2

    .line 1251
    :goto_5
    array-length v8, v5

    if-ge v4, v8, :cond_2

    .line 1252
    if-eqz v1, :cond_8

    aget-object v1, v5, v4

    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    aget-object v1, v5, v4

    aget-object v8, v7, v4

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v1, v2

    .line 1251
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    move v1, v3

    .line 1252
    goto :goto_6

    .line 171
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/adobe/b/a/b;)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/adobe/b/a/b/a$a;

    invoke-direct {v1, p2, p3}, Lcom/adobe/b/a/b/a$a;-><init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b;

    .line 192
    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/a/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#command > No command handler for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v0, p2}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/adobe/b/a/b;)V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    .line 206
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/b/a/b/a;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/b/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
