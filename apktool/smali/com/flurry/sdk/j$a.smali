.class public final Lcom/flurry/sdk/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/bb",
        "<",
        "Lcom/flurry/sdk/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 20
    .line 1053
    if-nez p1, :cond_1

    .line 1054
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 1057
    :cond_1
    new-instance v1, Lcom/flurry/sdk/j$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/j$a$2;-><init>(Lcom/flurry/sdk/j$a;Ljava/io/InputStream;)V

    .line 1064
    new-instance v0, Lcom/flurry/sdk/j;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/j;-><init>(B)V

    .line 1067
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1068
    if-lez v2, :cond_0

    .line 1069
    new-array v2, v2, [B

    .line 1070
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1073
    iput-object v2, v0, Lcom/flurry/sdk/j;->a:[B

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 20
    check-cast p2, Lcom/flurry/sdk/j;

    .line 2026
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    new-instance v1, Lcom/flurry/sdk/j$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/j$a$1;-><init>(Lcom/flurry/sdk/j$a;Ljava/io/OutputStream;)V

    .line 2037
    const/4 v0, 0x0

    .line 2038
    iget-object v2, p2, Lcom/flurry/sdk/j;->a:[B

    if-eqz v2, :cond_2

    .line 2039
    iget-object v0, p2, Lcom/flurry/sdk/j;->a:[B

    array-length v0, v0

    .line 2043
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2044
    if-lez v0, :cond_3

    .line 2045
    iget-object v0, p2, Lcom/flurry/sdk/j;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2048
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
