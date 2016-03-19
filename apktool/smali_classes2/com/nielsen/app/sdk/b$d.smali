.class final Lcom/nielsen/app/sdk/b$d;
.super Lcom/nielsen/app/sdk/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/b;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/k;J)V
    .locals 9

    .prologue
    .line 535
    iput-object p1, p0, Lcom/nielsen/app/sdk/b$d;->a:Lcom/nielsen/app/sdk/b;

    .line 536
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AppTaskConfig"

    const-wide/16 v4, 0x1

    move-object v1, p0

    move-object v2, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/nielsen/app/sdk/k$a;-><init>(Lcom/nielsen/app/sdk/k;Ljava/lang/String;JJ)V

    .line 537
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 547
    :try_start_0
    new-instance v0, Lcom/nielsen/app/sdk/b$b;

    iget-object v1, p0, Lcom/nielsen/app/sdk/b$d;->a:Lcom/nielsen/app/sdk/b;

    iget-object v2, p0, Lcom/nielsen/app/sdk/b$d;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v2}, Lcom/nielsen/app/sdk/b;->a(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nielsen/app/sdk/b$b;-><init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/h;)V

    .line 548
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return v6

    .line 551
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x45

    const-string v4, "There is no utilities object to execute the request"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
