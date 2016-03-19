.class final Lcom/google/c/b/ab$1;
.super Lcom/google/c/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/ab;->a(Lcom/google/c/b/g;)Lcom/google/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/g",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/g;


# direct methods
.method constructor <init>(Lcom/google/c/b/g;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/c/b/ab$1;->a:Lcom/google/c/b/g;

    invoke-direct {p0}, Lcom/google/c/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/c/b/ab$1;->a:Lcom/google/c/b/g;

    invoke-virtual {v0}, Lcom/google/c/b/g;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/c/b/ab$1;->a:Lcom/google/c/b/g;

    invoke-virtual {v0}, Lcom/google/c/b/g;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
