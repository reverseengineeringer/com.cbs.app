.class final Lcom/nielsen/app/sdk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nielsen/app/sdk/a;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/a;


# direct methods
.method constructor <init>(Lcom/nielsen/app/sdk/a;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0xd

    const/4 v7, 0x0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/16 v0, 0xd

    const/16 v1, 0x45

    const-string v2, "Failed setting up counters"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->c()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    .line 2221
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x6

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IJJI)J

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->d()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    .line 2284
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x7

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IJJI)J

    .line 176
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->e()J

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$1;->a:Lcom/nielsen/app/sdk/a;

    invoke-static {v0}, Lcom/nielsen/app/sdk/a;->a(Lcom/nielsen/app/sdk/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    const/16 v3, 0x57

    const-string v4, "Could not setup cache"

    new-array v5, v7, [Ljava/lang/Object;

    move v1, v7

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
