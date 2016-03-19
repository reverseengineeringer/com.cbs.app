.class final Lcom/flurry/sdk/bo$1;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bo;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bo;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/bo$1;->a:Lcom/flurry/sdk/bo;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/sdk/bm;

    invoke-direct {v0}, Lcom/flurry/sdk/bm;-><init>()V

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/bo$1;->a:Lcom/flurry/sdk/bo;

    invoke-static {v0}, Lcom/flurry/sdk/bo;->a(Lcom/flurry/sdk/bo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bo$1;->a:Lcom/flurry/sdk/bo;

    invoke-static {v0}, Lcom/flurry/sdk/bo;->b(Lcom/flurry/sdk/bo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/bo$1;->a:Lcom/flurry/sdk/bo;

    invoke-static {v1}, Lcom/flurry/sdk/bo;->c(Lcom/flurry/sdk/bo;)Lcom/flurry/sdk/bt;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/bo$1;->a:Lcom/flurry/sdk/bo;

    invoke-static {v2}, Lcom/flurry/sdk/bo;->d(Lcom/flurry/sdk/bo;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/Runnable;J)V

    .line 27
    :cond_0
    return-void
.end method
