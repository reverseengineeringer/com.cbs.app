.class final Lcom/flurry/sdk/av$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/av;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
        "Lcom/flurry/sdk/aw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/av;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/av;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/flurry/sdk/av$7;->a:Lcom/flurry/sdk/av;

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
            "Lcom/flurry/sdk/aw;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/flurry/sdk/ba;

    new-instance v1, Lcom/flurry/sdk/aw$a;

    invoke-direct {v1}, Lcom/flurry/sdk/aw$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ba;-><init>(Lcom/flurry/sdk/bb;)V

    return-object v0
.end method
