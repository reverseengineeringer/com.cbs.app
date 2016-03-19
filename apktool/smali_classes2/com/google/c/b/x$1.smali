.class final Lcom/google/c/b/x$1;
.super Lcom/google/c/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/x;->c()Lcom/google/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/p",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/t;

.field final synthetic b:Lcom/google/c/b/x;


# direct methods
.method constructor <init>(Lcom/google/c/b/x;Lcom/google/c/b/t;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/c/b/x$1;->b:Lcom/google/c/b/x;

    iput-object p2, p0, Lcom/google/c/b/x$1;->a:Lcom/google/c/b/t;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/c/b/x$1;->b:Lcom/google/c/b/x;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/c/b/x$1;->a:Lcom/google/c/b/t;

    invoke-virtual {v0, p1}, Lcom/google/c/b/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
