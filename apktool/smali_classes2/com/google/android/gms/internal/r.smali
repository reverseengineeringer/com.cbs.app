.class final Lcom/google/android/gms/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/p;


# instance fields
.field private a:Lcom/google/android/gms/internal/lf;

.field private b:[B

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xef

    iput v0, p0, Lcom/google/android/gms/internal/r;->c:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/r;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->b:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a([B)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->a:Lcom/google/android/gms/internal/lf;

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lf;->a(IJ)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/lf;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lf;->a()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->b:[B

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->b:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->b:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
