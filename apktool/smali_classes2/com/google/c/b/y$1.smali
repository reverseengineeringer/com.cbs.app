.class final Lcom/google/c/b/y$1;
.super Lcom/google/c/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/y;->c()Lcom/google/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/p",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/t;

.field final synthetic b:Lcom/google/c/b/y;


# direct methods
.method constructor <init>(Lcom/google/c/b/y;Lcom/google/c/b/t;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/c/b/y$1;->b:Lcom/google/c/b/y;

    iput-object p2, p0, Lcom/google/c/b/y$1;->a:Lcom/google/c/b/t;

    invoke-direct {p0}, Lcom/google/c/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/r",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/c/b/y$1;->b:Lcom/google/c/b/y;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/c/b/y$1;->a:Lcom/google/c/b/t;

    invoke-virtual {v0, p1}, Lcom/google/c/b/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
