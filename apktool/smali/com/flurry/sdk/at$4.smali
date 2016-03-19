.class final Lcom/flurry/sdk/at$4;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/at$a;

.field final synthetic b:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;Lcom/flurry/sdk/at$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/at$4;->b:Lcom/flurry/sdk/at;

    iput-object p2, p0, Lcom/flurry/sdk/at$4;->a:Lcom/flurry/sdk/at$a;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/at$4;->b:Lcom/flurry/sdk/at;

    invoke-virtual {v0}, Lcom/flurry/sdk/at;->c()V

    .line 133
    return-void
.end method
