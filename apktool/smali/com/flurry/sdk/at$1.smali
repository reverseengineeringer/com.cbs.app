.class final Lcom/flurry/sdk/at$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ah",
        "<",
        "Lcom/flurry/sdk/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/at$1;->a:Lcom/flurry/sdk/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ag;)V
    .locals 4

    .prologue
    .line 42
    check-cast p1, Lcom/flurry/sdk/s;

    .line 1045
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/at$1;->a:Lcom/flurry/sdk/at;

    iget-object v1, v1, Lcom/flurry/sdk/at;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/flurry/sdk/s;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-boolean v0, p1, Lcom/flurry/sdk/s;->a:Z

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/flurry/sdk/at$1;->a:Lcom/flurry/sdk/at;

    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()V

    .line 42
    :cond_0
    return-void
.end method
