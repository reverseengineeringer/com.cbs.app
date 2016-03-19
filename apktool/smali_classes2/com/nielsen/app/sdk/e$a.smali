.class public final Lcom/nielsen/app/sdk/e$a;
.super Lcom/nielsen/app/sdk/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/a$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/nielsen/app/sdk/e;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/e;Lcom/nielsen/app/sdk/h;)V
    .locals 16

    .prologue
    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/app/sdk/e$a;->c:Lcom/nielsen/app/sdk/e;

    .line 139
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "AppLogRequest"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/nielsen/app/sdk/h$d;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/e$a;->b:Ljava/lang/String;

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->b(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->b()Lcom/nielsen/app/sdk/b$c;

    move-result-object v7

    .line 143
    const-wide/16 v4, 0x0

    .line 147
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->a(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a;->f()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No error logs to send to Census"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const/16 v6, 0x49

    :try_start_1
    const-string v8, "Failed sending logs to Census"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v8, v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 226
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->g(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 227
    invoke-virtual {v7}, Lcom/nielsen/app/sdk/b$c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->c(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->r()Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No Network connection. Device is currently offline"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    :catch_1
    move-exception v2

    .line 218
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    const-string v6, "Could NOT post request to send logs to Census"

    invoke-direct {v3, v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    :catchall_0
    move-exception v2

    .line 224
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 226
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->g(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 227
    invoke-virtual {v7}, Lcom/nielsen/app/sdk/b$c;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 222
    :cond_3
    throw v2

    .line 154
    :cond_4
    const/16 v2, 0x49

    :try_start_6
    const-string v3, "Sending errors to Census"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const-string v3, ""

    .line 157
    const/4 v2, 0x1

    .line 158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v3

    move v3, v2

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nielsen/app/sdk/a$a;

    .line 160
    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->g()I

    move-result v9

    int-to-long v10, v9

    .line 161
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_5

    .line 164
    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->a()J

    move-result-wide v12

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "code="

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ",count="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",t1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",t2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->d()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",t3="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->e()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v10, v9

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->d(Lcom/nielsen/app/sdk/e;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->d(Lcom/nielsen/app/sdk/e;)J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x14

    sub-long/2addr v12, v14

    long-to-int v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->d(Lcom/nielsen/app/sdk/e;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    sub-long/2addr v10, v12

    long-to-int v10, v10

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->d(Lcom/nielsen/app/sdk/e;)J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    long-to-int v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    int-to-long v10, v9

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->e(Lcom/nielsen/app/sdk/e;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_8

    .line 178
    if-nez v3, :cond_7

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    const/4 v2, 0x0

    move-object v6, v3

    move v3, v2

    .line 183
    goto/16 :goto_1

    .line 185
    :cond_8
    const-string v2, "nol_error_message"

    invoke-virtual {v7, v2, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->f(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/p;

    move-result-object v2

    const-string v3, "nol_errorURL"

    const-string v6, "http://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/error?message=|!(nol_error_message)!|,c13_|![nol_appid]!|,c16_|![nol_sdkv]!|,c8_|![nol_devGroup]!|,c7_|![nol_osGroup]!|,c10_|![nol_platform]!|,c17_|![nol_stationId]!|,c18_|![nol_assetid]!|,c6_|![nol_product]!|,ci_|![nol_clientid]!|"

    invoke-virtual {v2, v3, v6}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 189
    :cond_9
    const-string v2, "nol_errorURL"

    invoke-virtual {v7, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->g(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v4

    .line 193
    invoke-virtual {v7, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 195
    const/4 v3, 0x1

    new-array v3, v3, [Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v3, v6

    .line 197
    invoke-virtual {v7, v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 198
    const/4 v6, 0x0

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 200
    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&rnd="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    new-instance v3, Lcom/nielsen/app/sdk/h$c;

    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->h(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/h;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "AppLogRequest"

    move-object/from16 v0, p0

    invoke-direct {v3, v6, v8, v0}, Lcom/nielsen/app/sdk/h$c;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/nielsen/app/sdk/e;->a(Lcom/nielsen/app/sdk/e;Lcom/nielsen/app/sdk/h$c;)Lcom/nielsen/app/sdk/h$c;

    .line 204
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/e$a;->b:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 226
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/nielsen/app/sdk/e;->g(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 227
    invoke-virtual {v7}, Lcom/nielsen/app/sdk/b$c;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 231
    :catch_2
    move-exception v2

    .line 233
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "URL parser on post Logs request failed releasing"

    invoke-direct {v3, v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 208
    :cond_c
    :try_start_8
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed sending logs due to failed parsing"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    :catch_3
    move-exception v2

    .line 233
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "URL parser on post Logs request failed releasing"

    invoke-direct {v3, v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 231
    :catch_4
    move-exception v2

    .line 233
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "URL parser on post Logs request failed releasing"

    invoke-direct {v3, v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    const/16 v0, 0x49

    const-string v1, "LOG UPLOAD received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/nielsen/app/sdk/e$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/a$a;

    .line 110
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$a;->g()I

    move-result v2

    int-to-long v2, v2

    .line 111
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$a;->a()J

    move-result-wide v2

    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/a$a;->b(J)V

    .line 117
    iget-object v2, p0, Lcom/nielsen/app/sdk/e$a;->c:Lcom/nielsen/app/sdk/e;

    invoke-static {v2}, Lcom/nielsen/app/sdk/e;->a(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nielsen/app/sdk/a;->a(Lcom/nielsen/app/sdk/a$a;)V

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 77
    const/16 v2, 0x9

    const/16 v3, 0x45

    const-string v4, "Log upload error, name(%s)"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method
