.class public final Lcom/google/c/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/h",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/c/b/aa$1;

    invoke-direct {v0}, Lcom/google/c/b/aa$1;-><init>()V

    sput-object v0, Lcom/google/c/b/aa;->a:Lcom/google/c/b/h;

    .line 127
    new-instance v0, Lcom/google/c/b/aa$4;

    invoke-direct {v0}, Lcom/google/c/b/aa$4;-><init>()V

    sput-object v0, Lcom/google/c/b/aa;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lcom/google/c/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/g",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1124
    sget-object v0, Lcom/google/c/b/aa;->a:Lcom/google/c/b/h;

    .line 112
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/c/b/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Lcom/google/c/b/aa$3;

    invoke-direct {v0, p0}, Lcom/google/c/b/aa$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/google/c/b/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/google/c/b/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/d;->a(Z)V

    .line 1044
    add-int v0, p1, p2

    .line 1047
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/c/a/d;->a(III)V

    .line 1048
    invoke-static {p3, p2}, Lcom/google/c/a/d;->b(II)I

    .line 1049
    if-nez p2, :cond_1

    .line 3124
    sget-object v0, Lcom/google/c/b/aa;->a:Lcom/google/c/b/h;

    .line 1058
    :goto_1
    return-object v0

    .line 1043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v0, Lcom/google/c/b/aa$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/c/b/aa$2;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 202
    invoke-static {p1}, Lcom/google/c/a/f;->a(Ljava/lang/Object;)Lcom/google/c/a/e;

    move-result-object v3

    .line 1775
    const-string v0, "predicate"

    .line 2225
    if-nez v3, :cond_0

    .line 2226
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v0, v1

    .line 1776
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1777
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1778
    invoke-interface {v3, v4}, Lcom/google/c/a/e;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1684
    :goto_1
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1776
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1782
    goto :goto_1
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    :cond_1
    :goto_0
    return v0

    .line 273
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lcom/google/c/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method
