.class final Lcom/google/e/b/a/m$3;
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
    .line 304
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 304
    .line 1307
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    .line 1308
    sget-object v1, Lcom/google/e/b/a/m$25;->a:[I

    invoke-virtual {v0}, Lcom/google/e/d/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1315
    :pswitch_0
    new-instance v1, Lcom/google/e/q;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting number, got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1311
    const/4 v0, 0x0

    .line 1313
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/e/b/f;

    invoke-virtual {p1}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/e/b/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p2, Ljava/lang/Number;

    .line 1320
    invoke-virtual {p1, p2}, Lcom/google/e/d/c;->a(Ljava/lang/Number;)Lcom/google/e/d/c;

    .line 304
    return-void
.end method
