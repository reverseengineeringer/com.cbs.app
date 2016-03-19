.class final Lcom/google/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/j;


# instance fields
.field private a:Lcom/google/d/a/a;

.field private b:[B

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xef

    iput v0, p0, Lcom/google/a/a/l;->c:I

    .line 24
    invoke-virtual {p0}, Lcom/google/a/a/l;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/google/a/a/l;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/a/a/l;->b:[B

    .line 30
    iget-object v0, p0, Lcom/google/a/a/l;->b:[B

    .line 1075
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/d/a/a;->a([BI)Lcom/google/d/a/a;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/a/a/l;->a:Lcom/google/d/a/a;

    .line 31
    return-void
.end method

.method public final a(IJ)V
    .locals 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/a/a/l;->a:Lcom/google/d/a/a;

    .line 1116
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/d/a/a;->a(II)V

    .line 2016
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2017
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/google/d/a/a;->a(I)V

    .line 2018
    return-void

    .line 2020
    :cond_0
    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/d/a/a;->a(I)V

    .line 2021
    const/4 v1, 0x7

    ushr-long/2addr p2, v1

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/a/a/l;->a:Lcom/google/d/a/a;

    .line 2151
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/d/a/a;->a(II)V

    .line 2152
    invoke-virtual {v0, p2}, Lcom/google/d/a/a;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final b()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/a/a/l;->a:Lcom/google/d/a/a;

    invoke-virtual {v0}, Lcom/google/d/a/a;->a()I

    move-result v0

    .line 50
    if-gez v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 52
    :cond_0
    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/a/a/l;->b:[B

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/l;->b:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    .line 57
    iget-object v1, p0, Lcom/google/a/a/l;->b:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
