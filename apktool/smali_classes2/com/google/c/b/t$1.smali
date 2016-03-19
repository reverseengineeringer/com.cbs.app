.class final Lcom/google/c/b/t$1;
.super Lcom/google/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/t;->a(I)Lcom/google/c/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/t;


# direct methods
.method constructor <init>(Lcom/google/c/b/t;II)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/c/b/t$1;->a:Lcom/google/c/b/t;

    invoke-direct {p0, p2, p3}, Lcom/google/c/b/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/c/b/t$1;->a:Lcom/google/c/b/t;

    invoke-virtual {v0, p1}, Lcom/google/c/b/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
