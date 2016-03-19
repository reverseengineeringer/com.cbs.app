.class public final Lcom/flurry/sdk/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/bb",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/bb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/bb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/sdk/ba;->a:Lcom/flurry/sdk/bb;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 19
    .line 1056
    if-nez p1, :cond_1

    .line 1057
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1060
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ba$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ba$2;-><init>(Lcom/flurry/sdk/ba;Ljava/io/InputStream;)V

    .line 1068
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1071
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1072
    iget-object v3, p0, Lcom/flurry/sdk/ba;->a:Lcom/flurry/sdk/bb;

    invoke-interface {v3, p1}, Lcom/flurry/sdk/bb;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 1073
    if-nez v3, :cond_2

    .line 1074
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing record."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 19
    check-cast p2, Ljava/util/List;

    .line 2032
    if-eqz p1, :cond_2

    .line 2036
    new-instance v2, Lcom/flurry/sdk/ba$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ba$1;-><init>(Lcom/flurry/sdk/ba;Ljava/io/OutputStream;)V

    .line 2044
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2045
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2047
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2048
    iget-object v3, p0, Lcom/flurry/sdk/ba;->a:Lcom/flurry/sdk/bb;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/flurry/sdk/bb;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 2047
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 2044
    goto :goto_0

    .line 2051
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 19
    :cond_2
    return-void
.end method
