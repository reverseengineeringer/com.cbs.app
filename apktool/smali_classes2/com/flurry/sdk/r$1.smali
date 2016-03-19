.class final Lcom/flurry/sdk/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/r;
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
        "Lcom/flurry/sdk/bm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/r$1;->a:Lcom/flurry/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ag;)V
    .locals 4

    .prologue
    .line 63
    .line 1066
    iget-object v0, p0, Lcom/flurry/sdk/r$1;->a:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/r$1;->a:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1067
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/r;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/flurry/sdk/r$1;->a:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/r;)V

    .line 63
    :cond_0
    return-void
.end method
