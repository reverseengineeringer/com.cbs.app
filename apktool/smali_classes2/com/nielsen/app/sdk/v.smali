.class final Lcom/nielsen/app/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nielsen/app/sdk/t;

.field private b:Lcom/nielsen/app/sdk/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/nielsen/app/sdk/v;->a:Lcom/nielsen/app/sdk/t;

    .line 35
    iput-object v0, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    .line 45
    invoke-static {}, Lcom/nielsen/app/sdk/o;->n()Lcom/nielsen/app/sdk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/v;->a:Lcom/nielsen/app/sdk/t;

    .line 48
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 15

    .prologue
    const/16 v14, 0x45

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    const-wide/16 v0, -0x1

    .line 63
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v5}, Lcom/nielsen/app/sdk/a;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nielsen/app/sdk/a;->a(I)Ljava/util/List;

    move-result-object v5

    .line 69
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 71
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/a$b;

    .line 75
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v7, 0x0

    const/16 v8, 0x20

    aput-char v8, v1, v7

    .line 76
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$b;->d()J

    move-result-wide v8

    .line 78
    invoke-virtual {v4, v8, v9, v1}, Lcom/nielsen/app/sdk/b;->a(J[C)J

    move-result-wide v8

    .line 79
    const/4 v7, 0x0

    aget-char v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/a$b;->a(C)V

    .line 80
    invoke-virtual {v0, v8, v9}, Lcom/nielsen/app/sdk/a$b;->a(J)V

    .line 82
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$b;->c()I

    move-result v7

    .line 84
    iget-object v1, p0, Lcom/nielsen/app/sdk/v;->a:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/t;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nielsen/app/sdk/s;

    .line 86
    if-nez v1, :cond_1

    .line 88
    const/16 v1, 0x8

    const/16 v9, 0x45

    const-string v10, "Could not send data(%s), it is not available"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v1, v9, v10, v11}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    const-string v1, "An exception occurred while executing processing data on the SESSION table"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v14, v1, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v0, v3

    .line 155
    :goto_2
    return v0

    .line 91
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->a()I

    move-result v9

    .line 92
    packed-switch v7, :pswitch_data_0

    .line 138
    const/16 v1, 0x8

    const/16 v9, 0x57

    const-string v10, "Inexpected message type (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v1, v9, v10, v11}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :pswitch_0
    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 141
    :cond_2
    :pswitch_1
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->b()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    .line 142
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :pswitch_2
    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    .line 121
    :sswitch_0
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->e()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$b;->f()J

    move-result-wide v0

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v4, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0, v1}, Lcom/nielsen/app/sdk/a;->a(IJ)J

    .line 147
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 148
    goto :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 96
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    .line 165
    iget-object v0, p0, Lcom/nielsen/app/sdk/v;->b:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 167
    const/16 v0, 0x57

    const-string v1, "SESSION table is NOT empty yet"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nielsen/app/sdk/v$1;

    invoke-direct {v1, p0}, Lcom/nielsen/app/sdk/v$1;-><init>(Lcom/nielsen/app/sdk/v;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/16 v0, 0x49

    const-string v1, "SESSION table is now empty"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
