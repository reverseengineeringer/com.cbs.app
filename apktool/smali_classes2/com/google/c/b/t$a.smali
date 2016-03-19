.class final Lcom/google/c/b/t$a;
.super Lcom/google/c/b/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/t",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/c/b/t;


# direct methods
.method constructor <init>(Lcom/google/c/b/t;II)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/c/b/t$a;->c:Lcom/google/c/b/t;

    invoke-direct {p0}, Lcom/google/c/b/t;-><init>()V

    .line 407
    iput p2, p0, Lcom/google/c/b/t$a;->a:I

    .line 408
    iput p3, p0, Lcom/google/c/b/t$a;->b:I

    .line 409
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/c/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    iget v0, p0, Lcom/google/c/b/t$a;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/c/a/d;->a(III)V

    .line 425
    iget-object v0, p0, Lcom/google/c/b/t$a;->c:Lcom/google/c/b/t;

    iget v1, p0, Lcom/google/c/b/t$a;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/c/b/t$a;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/t;->a(II)Lcom/google/c/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 418
    iget v0, p0, Lcom/google/c/b/t$a;->b:I

    invoke-static {p1, v0}, Lcom/google/c/a/d;->a(II)I

    .line 419
    iget-object v0, p0, Lcom/google/c/b/t$a;->c:Lcom/google/c/b/t;

    iget v1, p0, Lcom/google/c/b/t$a;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/c/b/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/google/c/b/t;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    .line 1344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/c/b/t;->a(I)Lcom/google/c/b/h;

    move-result-object v0

    .line 402
    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/google/c/b/t;->a(I)Lcom/google/c/b/h;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/c/b/t$a;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/t$a;->a(II)Lcom/google/c/b/t;

    move-result-object v0

    return-object v0
.end method
