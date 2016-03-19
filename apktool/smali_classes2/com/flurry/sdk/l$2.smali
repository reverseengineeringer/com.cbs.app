.class final Lcom/flurry/sdk/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/l;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/bd",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/l;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/flurry/sdk/l$2;->a:Lcom/flurry/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/flurry/sdk/bb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/bb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/j;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/flurry/sdk/ba;

    new-instance v1, Lcom/flurry/sdk/j$a;

    invoke-direct {v1}, Lcom/flurry/sdk/j$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ba;-><init>(Lcom/flurry/sdk/bb;)V

    return-object v0
.end method
