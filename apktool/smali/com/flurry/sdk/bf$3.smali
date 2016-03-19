.class final Lcom/flurry/sdk/bf$3;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bf;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/be;

.field final synthetic b:Lcom/flurry/sdk/bf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bf;Lcom/flurry/sdk/be;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/flurry/sdk/bf$3;->b:Lcom/flurry/sdk/bf;

    iput-object p2, p0, Lcom/flurry/sdk/bf$3;->a:Lcom/flurry/sdk/be;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/bf$3;->b:Lcom/flurry/sdk/bf;

    iget-object v1, p0, Lcom/flurry/sdk/bf$3;->a:Lcom/flurry/sdk/be;

    invoke-static {v0, v1}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/bf;Lcom/flurry/sdk/be;)V

    .line 294
    return-void
.end method
