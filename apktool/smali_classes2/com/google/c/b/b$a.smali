.class final Lcom/google/c/b/b$a;
.super Lcom/google/c/b/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/w",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/b;


# direct methods
.method private constructor <init>(Lcom/google/c/b/b;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/c/b/b$a;->a:Lcom/google/c/b/b;

    invoke-direct {p0}, Lcom/google/c/b/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/b/b;B)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/c/b/b$a;-><init>(Lcom/google/c/b/b;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/c/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/g",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/c/b/b$a;->d()Lcom/google/c/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/t;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/google/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/t",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/c/b/ad;

    iget-object v1, p0, Lcom/google/c/b/b$a;->a:Lcom/google/c/b/b;

    invoke-static {v1}, Lcom/google/c/b/b;->a(Lcom/google/c/b/b;)[Lcom/google/c/b/v;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/ad;-><init>(Lcom/google/c/b/r;[Ljava/lang/Object;)V

    return-object v0
.end method

.method final h_()Lcom/google/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/c/b/b$a;->a:Lcom/google/c/b/b;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 188
    .line 1196
    invoke-virtual {p0}, Lcom/google/c/b/b$a;->d()Lcom/google/c/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/t;->b()Lcom/google/c/b/g;

    move-result-object v0

    .line 188
    return-object v0
.end method
