.class public abstract Lcom/urbanairship/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(III)I
    .locals 0

    .prologue
    .line 42
    if-le p0, p2, :cond_0

    .line 50
    :goto_0
    return p2

    .line 46
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 47
    goto :goto_0

    :cond_1
    move p2, p0

    .line 50
    goto :goto_0
.end method
