.class final Lcom/adobe/a/b/i$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field private b:J

.field private c:Lcom/adobe/a/b/i;


# direct methods
.method public constructor <init>(Lcom/adobe/a/b/i;)V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/a/b/i$b;->b:J

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/a/b/i$b;->c:Lcom/adobe/a/b/i;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/a/b/i$b;->a:Z

    .line 214
    iput-object p1, p0, Lcom/adobe/a/b/i$b;->c:Lcom/adobe/a/b/i;

    .line 215
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 218
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/a/b/i$b;->a:Z

    if-nez v0, :cond_3

    .line 224
    sget-object v10, Lcom/adobe/a/b/i;->c:Ljava/lang/Object;

    monitor-enter v10

    .line 227
    :try_start_0
    invoke-static {}, Lcom/adobe/a/b/i;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "HITS"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "URL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TIMESTAMP"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ID ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 228
    if-eqz v1, :cond_7

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v2

    .line 230
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v3

    .line 231
    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 238
    :goto_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_0
    :goto_2
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    if-eqz v3, :cond_3

    .line 251
    :try_start_5
    iget-object v1, p0, Lcom/adobe/a/b/i$b;->c:Lcom/adobe/a/b/i;

    iget-boolean v1, v1, Lcom/adobe/a/b/i;->a:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Lcom/adobe/a/b/i;->c()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 252
    invoke-static {v2}, Lcom/adobe/a/b/i;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/adobe/a/b/i$a; {:try_start_5 .. :try_end_5} :catch_1

    .line 279
    :goto_3
    :try_start_6
    iget-wide v0, p0, Lcom/adobe/a/b/i$b;->b:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 283
    iput-wide v12, p0, Lcom/adobe/a/b/i$b;->b:J

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    move-object v3, v9

    .line 235
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ADMS SDK Error: Unable to read from database("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 238
    if-eqz v1, :cond_6

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_2

    .line 238
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 242
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 256
    :cond_2
    :try_start_9
    new-instance v0, Lcom/adobe/a/b/h;

    invoke-direct {v0, v3}, Lcom/adobe/a/b/h;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcom/adobe/a/b/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/a/b/h;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/a/b/g;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    invoke-static {v2}, Lcom/adobe/a/b/i;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/adobe/a/b/i$a; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 270
    :catch_1
    move-exception v0

    .line 272
    iget-object v1, p0, Lcom/adobe/a/b/i$b;->c:Lcom/adobe/a/b/i;

    invoke-static {v1, v0}, Lcom/adobe/a/b/i;->a(Lcom/adobe/a/b/i;Ljava/lang/Exception;)V

    .line 286
    :cond_3
    iput-boolean v11, p0, Lcom/adobe/a/b/i$b;->a:Z

    .line 287
    return-void

    .line 261
    :cond_4
    :try_start_a
    iget-object v0, p0, Lcom/adobe/a/b/i$b;->c:Lcom/adobe/a/b/i;

    iget-boolean v0, v0, Lcom/adobe/a/b/i;->a:Z

    if-eqz v0, :cond_5

    .line 262
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 263
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/adobe/a/b/i$b;->b:J

    goto :goto_3

    .line 265
    :cond_5
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 266
    invoke-static {v2}, Lcom/adobe/a/b/i;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/adobe/a/b/i$a; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 281
    :catch_2
    move-exception v0

    :try_start_b
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 283
    iput-wide v12, p0, Lcom/adobe/a/b/i$b;->b:J

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    iput-wide v12, p0, Lcom/adobe/a/b/i$b;->b:J

    throw v0

    .line 238
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 234
    :catch_3
    move-exception v0

    move-object v2, v9

    move-object v3, v9

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v9

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v0, v9

    goto/16 :goto_2

    :cond_7
    move-object v0, v9

    move-object v2, v9

    move-object v3, v9

    goto/16 :goto_1
.end method
