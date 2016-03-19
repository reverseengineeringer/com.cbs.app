.class final Lcom/flurry/sdk/l$7;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/l;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/flurry/sdk/l$7;->a:Lcom/flurry/sdk/l;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/l$7;->a:Lcom/flurry/sdk/l;

    invoke-virtual {v0}, Lcom/flurry/sdk/l;->e()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/flurry/sdk/l$7;->a:Lcom/flurry/sdk/l;

    invoke-static {v1}, Lcom/flurry/sdk/l;->d(Lcom/flurry/sdk/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/l$7;->a:Lcom/flurry/sdk/l;

    invoke-virtual {v0}, Lcom/flurry/sdk/l;->g()V

    .line 251
    return-void
.end method
