.class final Lcom/flurry/sdk/l$5;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/l;->a(Landroid/content/Context;)V
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
    .line 211
    iput-object p1, p0, Lcom/flurry/sdk/l$5;->a:Lcom/flurry/sdk/l;

    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/l$5;->a:Lcom/flurry/sdk/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/l;->a(Lcom/flurry/sdk/l;Z)V

    .line 215
    return-void
.end method
