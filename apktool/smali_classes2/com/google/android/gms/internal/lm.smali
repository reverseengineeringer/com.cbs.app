.class public abstract Lcom/google/android/gms/internal/lm;
.super Ljava/lang/Object;


# instance fields
.field protected volatile n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lm;->n:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/lf;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/lm;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lm;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/lm;->n:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->d()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lm;->n:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->b()Lcom/google/android/gms/internal/lm;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/lm;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/internal/lm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
