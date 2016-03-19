.class public final Lcom/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lcom/a/c/a/b;->a:[I

    .line 76
    new-array v0, v1, [J

    sput-object v0, Lcom/a/c/a/b;->b:[J

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lcom/a/c/a/b;->c:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lcom/a/c/a/b;->d:[D

    .line 79
    new-array v0, v1, [Z

    sput-object v0, Lcom/a/c/a/b;->e:[Z

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/a/c/a/b;->f:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [[B

    sput-object v0, Lcom/a/c/a/b;->g:[[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lcom/a/c/a/b;->h:[B

    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
