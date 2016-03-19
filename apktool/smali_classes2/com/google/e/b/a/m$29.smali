.class final Lcom/google/e/b/a/m$29;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/e/d/a;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/google/e/d/a;->j()V

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/e/d/a;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-static {p1}, Lcom/google/e/b/a/m$29;->b(Lcom/google/e/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p2, Ljava/lang/Number;

    .line 1248
    invoke-virtual {p1, p2}, Lcom/google/e/d/c;->a(Ljava/lang/Number;)Lcom/google/e/d/c;

    .line 233
    return-void
.end method
