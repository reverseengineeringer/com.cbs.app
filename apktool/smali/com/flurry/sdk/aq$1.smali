.class final Lcom/flurry/sdk/aq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aq;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->d(Lcom/flurry/sdk/aq;)V

    .line 89
    return-void
.end method

.method public final a(Lcom/flurry/sdk/ar;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/ar;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    iget-object v1, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v1}, Lcom/flurry/sdk/aq;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/flurry/sdk/bb;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/aq;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/aq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->b(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->b(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v1}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/aq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/bb;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
