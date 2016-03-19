.class final Lcom/google/e/e$a;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/e/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/e/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    invoke-virtual {v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    invoke-virtual {v0, p1, p2}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    .line 904
    return-void
.end method

.method public final a(Lcom/google/e/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/s",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    if-eqz v0, :cond_0

    .line 887
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 889
    :cond_0
    iput-object p1, p0, Lcom/google/e/e$a;->a:Lcom/google/e/s;

    .line 890
    return-void
.end method
