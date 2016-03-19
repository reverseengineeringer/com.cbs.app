.class public final Lcom/nielsen/app/sdk/j$a;
.super Lcom/nielsen/app/sdk/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/nielsen/app/sdk/j;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/j;Lcom/nielsen/app/sdk/h;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TimeShiftValueHandler"

    invoke-direct {p0, p2, v0}, Lcom/nielsen/app/sdk/h$d;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/j$a;->a:Z

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    const/16 v0, 0x49

    const-string v1, "TSV response: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v0, "nol_tsvFlag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    iget-object v0, v0, Lcom/nielsen/app/sdk/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    iget-object v4, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    iget-object v4, v4, Lcom/nielsen/app/sdk/j;->a:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "Failed recovering TSV value for CID(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    invoke-static {v3}, Lcom/nielsen/app/sdk/j;->b(Lcom/nielsen/app/sdk/j;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/nielsen/app/sdk/j$a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 168
    :goto_1
    return-void

    .line 145
    :cond_0
    :try_start_1
    const-string v0, "nol_tsvFlag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    invoke-static {v2, v0}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/j;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    const-string v0, "nol_pcTimeCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    const-string v2, "nol_pcTimeCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/j;J)J

    .line 154
    :cond_1
    const-string v0, "nol_fdTimeCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    const-string v2, "nol_fdTimeCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/j;->b(Lcom/nielsen/app/sdk/j;J)J

    .line 157
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/j$a;->a:Z

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    invoke-static {v0}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/j;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nielsen/app/sdk/j$a;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/16 v3, 0x45

    const/16 v2, 0x9

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/j$a;->b:Lcom/nielsen/app/sdk/j;

    invoke-static {v0}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/j;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-boolean v4, p0, Lcom/nielsen/app/sdk/j$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const-string v4, "Error while responding request"

    new-array v5, v5, [Ljava/lang/Object;

    :goto_0
    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    move-object v6, v0

    const-string v4, "Error while responding request"

    new-array v5, v5, [Ljava/lang/Object;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :catch_0
    move-exception v0

    const-string v4, "Error while responding request"

    new-array v5, v5, [Ljava/lang/Object;

    goto :goto_0
.end method
