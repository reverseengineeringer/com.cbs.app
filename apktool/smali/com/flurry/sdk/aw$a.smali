.class public final Lcom/flurry/sdk/aw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aw;
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
        "Lcom/flurry/sdk/aw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 18
    .line 1042
    if-nez p1, :cond_0

    .line 1043
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1046
    :cond_0
    new-instance v1, Lcom/flurry/sdk/aw$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/aw$a$2;-><init>(Lcom/flurry/sdk/aw$a;Ljava/io/InputStream;)V

    .line 1053
    new-instance v0, Lcom/flurry/sdk/aw;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/aw;-><init>(B)V

    .line 1054
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 18
    check-cast p2, Lcom/flurry/sdk/aw;

    .line 2024
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    new-instance v0, Lcom/flurry/sdk/aw$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/aw$a$1;-><init>(Lcom/flurry/sdk/aw$a;Ljava/io/OutputStream;)V

    .line 2035
    invoke-static {p2}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
