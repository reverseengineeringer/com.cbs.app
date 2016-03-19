.class final Lcom/nielsen/app/sdk/u$a;
.super Lcom/nielsen/app/sdk/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/u;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/k;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nielsen/app/sdk/u$a;->a:Lcom/nielsen/app/sdk/u;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x493e0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/nielsen/app/sdk/k$a;-><init>(Lcom/nielsen/app/sdk/k;Ljava/lang/String;JJ)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/nielsen/app/sdk/u$a;->a:Lcom/nielsen/app/sdk/u;

    new-instance v1, Lcom/nielsen/app/sdk/u$b;

    iget-object v2, p0, Lcom/nielsen/app/sdk/u$a;->a:Lcom/nielsen/app/sdk/u;

    invoke-direct {v1, v2, v3}, Lcom/nielsen/app/sdk/u$b;-><init>(Lcom/nielsen/app/sdk/u;B)V

    invoke-static {v0, v1}, Lcom/nielsen/app/sdk/u;->a(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/u$b;)Lcom/nielsen/app/sdk/u$b;

    .line 80
    invoke-static {}, Lcom/nielsen/app/sdk/u;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/u$a;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v1}, Lcom/nielsen/app/sdk/u;->a(Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/u$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const/16 v0, 0x45

    const-string v1, "Error while setting up the refresh event. Possible Cause - Looper processing the message queue may be exiting !"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
