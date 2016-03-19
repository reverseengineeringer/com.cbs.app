.class final Lcom/nielsen/app/sdk/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/u;


# direct methods
.method private constructor <init>(Lcom/nielsen/app/sdk/u;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nielsen/app/sdk/u;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/u$b;-><init>(Lcom/nielsen/app/sdk/u;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v0}, Lcom/nielsen/app/sdk/u;->b(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v0}, Lcom/nielsen/app/sdk/u;->c(Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v2}, Lcom/nielsen/app/sdk/u;->b(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 110
    invoke-static {}, Lcom/nielsen/app/sdk/o;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v2}, Lcom/nielsen/app/sdk/u;->c(Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/o;->a()Z

    .line 114
    iget-object v2, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    iget-object v3, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v3}, Lcom/nielsen/app/sdk/u;->d(Lcom/nielsen/app/sdk/u;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v4}, Lcom/nielsen/app/sdk/u;->e(Lcom/nielsen/app/sdk/u;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/nielsen/app/sdk/u;->b()Lcom/nielsen/app/sdk/u;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/nielsen/app/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nielsen/app/sdk/u;->a(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/o;)Lcom/nielsen/app/sdk/o;

    .line 116
    iget-object v2, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    iget-object v3, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v3}, Lcom/nielsen/app/sdk/u;->f(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/nielsen/app/sdk/u;->a(Lcom/nielsen/app/sdk/u;J)J

    .line 118
    const/16 v2, 0x49

    const-string v3, "New App SDK refresh. Now(%d), next time(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v1}, Lcom/nielsen/app/sdk/u;->b(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    iget-object v3, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v3}, Lcom/nielsen/app/sdk/u;->g(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/nielsen/app/sdk/u;->a(Lcom/nielsen/app/sdk/u;J)J

    .line 124
    const/16 v2, 0x49

    const-string v3, "Postponed the App SDK refresh. Now(%d), next time(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nielsen/app/sdk/u$b;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v1}, Lcom/nielsen/app/sdk/u;->b(Lcom/nielsen/app/sdk/u;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    const/16 v1, 0x45

    const-string v2, "Error while setting up the refresh event"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v9, v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
