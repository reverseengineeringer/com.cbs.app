.class public final Lcom/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/c/a/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/a/c/a/a;->a:[B

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/c/a/a;->c:I

    .line 59
    add-int/lit8 v0, p3, 0x0

    iput v0, p0, Lcom/a/c/a/a;->b:I

    .line 60
    return-void
.end method

.method public static a([BI)Lcom/a/c/a/a;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/a/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/a/c/a/a;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcom/a/c/a/a;->b:I

    iget v1, p0, Lcom/a/c/a/a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 738
    int-to-byte v0, p1

    .line 1728
    iget v1, p0, Lcom/a/c/a/a;->c:I

    iget v2, p0, Lcom/a/c/a/a;->b:I

    if-ne v1, v2, :cond_0

    .line 1730
    new-instance v0, Lcom/a/c/a/a$a;

    iget v1, p0, Lcom/a/c/a/a;->c:I

    iget v2, p0, Lcom/a/c/a/a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/a/c/a/a$a;-><init>(II)V

    throw v0

    .line 1733
    :cond_0
    iget-object v1, p0, Lcom/a/c/a/a;->a:[B

    iget v2, p0, Lcom/a/c/a/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/c/a/a;->c:I

    aput-byte v0, v1, v2

    .line 739
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 762
    invoke-static {p1, p2}, Lcom/a/c/a/b;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/c/a/a;->b(I)V

    .line 763
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 776
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/a/c/a/a;->a(I)V

    .line 778
    return-void

    .line 780
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/a/c/a/a;->a(I)V

    .line 781
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final b([BI)V
    .locals 3

    .prologue
    .line 749
    iget v0, p0, Lcom/a/c/a/a;->b:I

    iget v1, p0, Lcom/a/c/a/a;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    .line 751
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/c/a/a;->a:[B

    iget v2, p0, Lcom/a/c/a/a;->c:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    iget v0, p0, Lcom/a/c/a/a;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/a/c/a/a;->c:I

    return-void

    .line 755
    :cond_0
    new-instance v0, Lcom/a/c/a/a$a;

    iget v1, p0, Lcom/a/c/a/a;->c:I

    iget v2, p0, Lcom/a/c/a/a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/a/c/a/a$a;-><init>(II)V

    throw v0
.end method
