.class final Lcom/google/c/b/ad;
.super Lcom/google/c/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/p",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/c/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/r",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/t",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/c/b/r;Lcom/google/c/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/r",
            "<TE;>;",
            "Lcom/google/c/b/t",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/c/b/p;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/c/b/ad;->a:Lcom/google/c/b/r;

    .line 36
    iput-object p2, p0, Lcom/google/c/b/ad;->b:Lcom/google/c/b/t;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/google/c/b/r;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/r",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p2}, Lcom/google/c/b/t;->a([Ljava/lang/Object;)Lcom/google/c/b/t;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/c/b/ad;-><init>(Lcom/google/c/b/r;Lcom/google/c/b/t;)V

    .line 41
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/c/b/ad;->b:Lcom/google/c/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/b/t;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/c/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/c/b/h",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/c/b/ad;->b:Lcom/google/c/b/t;

    invoke-virtual {v0, p1}, Lcom/google/c/b/t;->a(I)Lcom/google/c/b/h;

    move-result-object v0

    return-object v0
.end method

.method final a()Lcom/google/c/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/r",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/c/b/ad;->a:Lcom/google/c/b/r;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/c/b/ad;->b:Lcom/google/c/b/t;

    invoke-virtual {v0, p1}, Lcom/google/c/b/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/c/b/ad;->a(I)Lcom/google/c/b/h;

    move-result-object v0

    return-object v0
.end method
