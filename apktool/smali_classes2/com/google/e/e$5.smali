.class final Lcom/google/e/e$5;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Lcom/google/e/e;


# direct methods
.method constructor <init>(Lcom/google/e/e;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/e/e$5;->a:Lcom/google/e/e;

    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 310
    .line 1312
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1313
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1314
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1316
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 310
    check-cast p2, Ljava/lang/Number;

    .line 1319
    if-nez p2, :cond_0

    .line 1320
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    .line 1321
    :goto_0
    return-void

    .line 1323
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->b(Ljava/lang/String;)Lcom/google/e/d/c;

    goto :goto_0
.end method
