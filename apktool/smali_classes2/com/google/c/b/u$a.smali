.class public final Lcom/google/c/b/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:[Lcom/google/c/b/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/c/b/v$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/b/u$a;-><init>(B)V

    .line 185
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/c/b/v$a;

    iput-object v0, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/b/u$a;->b:I

    .line 191
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/c/b/u$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lcom/google/c/b/u$a;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1194
    iget-object v0, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    array-length v0, v0

    if-le v1, v0, :cond_3

    .line 1195
    iget-object v2, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    iget-object v0, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    array-length v0, v0

    .line 1219
    if-gez v1, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1223
    :cond_0
    shr-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 1224
    if-ge v0, v1, :cond_1

    .line 1225
    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 1227
    :cond_1
    if-gez v0, :cond_2

    .line 1228
    const v0, 0x7fffffff

    .line 1195
    :cond_2
    invoke-static {v2, v0}, Lcom/google/c/b/ac;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/v$a;

    iput-object v0, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    .line 206
    :cond_3
    invoke-static {p1, p2}, Lcom/google/c/b/u;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/v$a;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    iget v2, p0, Lcom/google/c/b/u$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/c/b/u$a;->b:I

    aput-object v0, v1, v2

    .line 209
    return-object p0
.end method

.method public final a()Lcom/google/c/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 248
    iget v0, p0, Lcom/google/c/b/u$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Lcom/google/c/b/b;

    iget v1, p0, Lcom/google/c/b/u$a;->b:I

    iget-object v2, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    invoke-direct {v0, v1, v2}, Lcom/google/c/b/b;-><init>(I[Lcom/google/c/b/v$a;)V

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    invoke-static {}, Lcom/google/c/b/u;->h()Lcom/google/c/b/u;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/c/b/v$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/u$a;->a:[Lcom/google/c/b/v$a;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/c/b/v$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/b/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
