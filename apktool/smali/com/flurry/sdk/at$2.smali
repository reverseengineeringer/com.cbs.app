.class final Lcom/flurry/sdk/at$2;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/at$2;->b:Lcom/flurry/sdk/at;

    iput-object p2, p0, Lcom/flurry/sdk/at$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/at$2;->b:Lcom/flurry/sdk/at;

    new-instance v1, Lcom/flurry/sdk/av;

    iget-object v2, p0, Lcom/flurry/sdk/at$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/av;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/at;->e:Lcom/flurry/sdk/av;

    .line 68
    return-void
.end method
