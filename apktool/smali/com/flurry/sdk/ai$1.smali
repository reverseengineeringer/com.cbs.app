.class final Lcom/flurry/sdk/ai$1;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ah;

.field final synthetic b:Lcom/flurry/sdk/ag;

.field final synthetic c:Lcom/flurry/sdk/ai;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ah;Lcom/flurry/sdk/ag;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/sdk/ai$1;->c:Lcom/flurry/sdk/ai;

    iput-object p2, p0, Lcom/flurry/sdk/ai$1;->a:Lcom/flurry/sdk/ah;

    iput-object p3, p0, Lcom/flurry/sdk/ai$1;->b:Lcom/flurry/sdk/ag;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/ai$1;->a:Lcom/flurry/sdk/ah;

    iget-object v1, p0, Lcom/flurry/sdk/ai$1;->b:Lcom/flurry/sdk/ag;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/ah;->a(Lcom/flurry/sdk/ag;)V

    .line 139
    return-void
.end method
