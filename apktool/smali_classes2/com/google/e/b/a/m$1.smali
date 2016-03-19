.class final Lcom/google/e/b/a/m$1;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/e/s",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    .line 1075
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1076
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1077
    const/4 v0, 0x0

    return-object v0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 63
    check-cast p2, Ljava/lang/Class;

    .line 2066
    if-nez p2, :cond_0

    .line 2067
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    return-void

    .line 2069
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to serialize java.lang.Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Forgot to register a type adapter?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
