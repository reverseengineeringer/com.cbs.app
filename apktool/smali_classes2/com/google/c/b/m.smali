.class final Lcom/google/c/b/m;
.super Lcom/google/c/b/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/q",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/c/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/c/b/m;

    invoke-direct {v0}, Lcom/google/c/b/m;-><init>()V

    sput-object v0, Lcom/google/c/b/m;->a:Lcom/google/c/b/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/c/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/b/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final c()Lcom/google/c/b/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/q",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    return-object p0
.end method

.method public final d()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/google/c/b/z;->e()Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/google/c/b/z;->e()Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1056
    invoke-static {}, Lcom/google/c/b/z;->e()Lcom/google/c/b/z;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1071
    invoke-static {}, Lcom/google/c/b/z;->e()Lcom/google/c/b/z;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
