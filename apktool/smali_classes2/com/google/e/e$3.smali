.class final Lcom/google/e/e$3;
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
    .line 254
    iput-object p1, p0, Lcom/google/e/e$3;->a:Lcom/google/e/e;

    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 254
    .line 1256
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1257
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1258
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1260
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 254
    check-cast p2, Ljava/lang/Number;

    .line 1263
    if-nez p2, :cond_0

    .line 1264
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    .line 1265
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1268
    invoke-static {v0, v1}, Lcom/google/e/e;->a(D)V

    .line 1269
    invoke-virtual {p1, p2}, Lcom/google/e/d/c;->a(Ljava/lang/Number;)Lcom/google/e/d/c;

    goto :goto_0
.end method
