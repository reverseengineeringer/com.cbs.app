.class final Lcom/flurry/sdk/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/l;
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
        "Lcom/flurry/sdk/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/l;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/sdk/l$1;->a:Lcom/flurry/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ag;)V
    .locals 2

    .prologue
    .line 146
    .line 1150
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$1$1;-><init>(Lcom/flurry/sdk/l$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
