.class final Lcom/google/ads/interactivemedia/v3/a/b/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/j$a$a;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/j$a$a;->a:[C

    array-length v0, v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/j$a$a;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
