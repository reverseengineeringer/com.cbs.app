.class final Lcom/flurry/sdk/bg$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bg;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/bg$a;->a:Lcom/flurry/sdk/bg;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/bg$a;->a:Lcom/flurry/sdk/bg;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/bh;

    invoke-direct {v0}, Lcom/flurry/sdk/bh;-><init>()V

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V

    .line 24
    return-void
.end method
