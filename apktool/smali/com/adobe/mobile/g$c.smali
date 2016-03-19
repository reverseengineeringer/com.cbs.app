.class final Lcom/adobe/mobile/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/adobe/mobile/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 251
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v1

    .line 254
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 259
    const-string v0, "Accept-Language"

    invoke-static {}, Lcom/adobe/mobile/am;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/adobe/mobile/am;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->m()Lcom/adobe/mobile/ag;

    move-result-object v0

    sget-object v3, Lcom/adobe/mobile/ag;->a:Lcom/adobe/mobile/ag;

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/adobe/mobile/g;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    invoke-static {v1}, Lcom/adobe/mobile/g;->a(Lcom/adobe/mobile/g;)Lcom/adobe/mobile/g$a;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_4

    .line 272
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-wide v4, v3, Lcom/adobe/mobile/g$a;->c:J

    invoke-static {v1}, Lcom/adobe/mobile/g;->b(Lcom/adobe/mobile/g;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 277
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 279
    invoke-static {v1}, Lcom/adobe/mobile/g;->b(Lcom/adobe/mobile/g;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "&ts="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/adobe/mobile/g$a;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "&ts="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    iget-object v7, v3, Lcom/adobe/mobile/g$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/adobe/mobile/g$a;->a:Ljava/lang/String;

    .line 285
    const-string v0, "Analytics - Adjusting out of order hit timestamp(%d->%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/adobe/mobile/g$a;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iput-wide v4, v3, Lcom/adobe/mobile/g$a;->c:J

    .line 310
    :cond_1
    iget-object v0, v3, Lcom/adobe/mobile/g$a;->a:Ljava/lang/String;

    .line 312
    const-string v4, "ndh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/mobile/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/adobe/mobile/g;->h()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5f5e100

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/adobe/mobile/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    :try_start_0
    iget-object v0, v3, Lcom/adobe/mobile/g$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/mobile/g;->a(Lcom/adobe/mobile/g;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/mobile/a$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    iget-wide v4, v3, Lcom/adobe/mobile/g$a;->c:J

    invoke-static {v1, v4, v5}, Lcom/adobe/mobile/g;->a(Lcom/adobe/mobile/g;J)J

    goto/16 :goto_0

    .line 291
    :cond_3
    iget-wide v4, v3, Lcom/adobe/mobile/g$a;->c:J

    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 297
    :try_start_1
    iget-object v0, v3, Lcom/adobe/mobile/g$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/mobile/g;->a(Lcom/adobe/mobile/g;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/mobile/a$a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/mobile/g;->a(Ljava/lang/Exception;)V

    .line 365
    :cond_4
    :goto_1
    invoke-static {}, Lcom/adobe/mobile/g;->i()Z

    .line 366
    return-void

    .line 321
    :catch_1
    move-exception v0

    .line 322
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/mobile/g;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 332
    :cond_5
    const-string v0, "Analytics - Unable to send hit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    const-string v0, "Analytics - Network error, imposing internal cooldown(%d seconds)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1e

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    const/4 v0, 0x0

    :goto_2
    int-to-long v4, v0

    const-wide/16 v6, 0x1e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :try_start_2
    invoke-static {}, Lcom/adobe/mobile/g;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 343
    :cond_6
    :try_start_3
    iget-object v0, v3, Lcom/adobe/mobile/g$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/mobile/g;->a(Lcom/adobe/mobile/g;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/adobe/mobile/a$a; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 344
    :catch_2
    move-exception v0

    .line 345
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/mobile/g;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 359
    :catch_3
    move-exception v0

    .line 360
    const-string v3, "Analytics - Background Thread Interrupted(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
