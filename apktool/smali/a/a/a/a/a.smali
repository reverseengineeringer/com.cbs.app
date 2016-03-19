.class public final La/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;

.field public static final d:[J

.field public static final e:[Ljava/lang/Long;

.field public static final f:[I

.field public static final g:[Ljava/lang/Integer;

.field public static final h:[S

.field public static final i:[Ljava/lang/Short;

.field public static final j:[B

.field public static final k:[Ljava/lang/Byte;

.field public static final l:[D

.field public static final m:[Ljava/lang/Double;

.field public static final n:[F

.field public static final o:[Ljava/lang/Float;

.field public static final p:[Z

.field public static final q:[Ljava/lang/Boolean;

.field public static final r:[C

.field public static final s:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, La/a/a/a/a;->a:[Ljava/lang/Object;

    .line 53
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, La/a/a/a/a;->b:[Ljava/lang/Class;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, La/a/a/a/a;->c:[Ljava/lang/String;

    .line 61
    new-array v0, v1, [J

    sput-object v0, La/a/a/a/a;->d:[J

    .line 65
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, La/a/a/a/a;->e:[Ljava/lang/Long;

    .line 69
    new-array v0, v1, [I

    sput-object v0, La/a/a/a/a;->f:[I

    .line 73
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, La/a/a/a/a;->g:[Ljava/lang/Integer;

    .line 77
    new-array v0, v1, [S

    sput-object v0, La/a/a/a/a;->h:[S

    .line 81
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, La/a/a/a/a;->i:[Ljava/lang/Short;

    .line 85
    new-array v0, v1, [B

    sput-object v0, La/a/a/a/a;->j:[B

    .line 89
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, La/a/a/a/a;->k:[Ljava/lang/Byte;

    .line 93
    new-array v0, v1, [D

    sput-object v0, La/a/a/a/a;->l:[D

    .line 97
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, La/a/a/a/a;->m:[Ljava/lang/Double;

    .line 101
    new-array v0, v1, [F

    sput-object v0, La/a/a/a/a;->n:[F

    .line 105
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, La/a/a/a/a;->o:[Ljava/lang/Float;

    .line 109
    new-array v0, v1, [Z

    sput-object v0, La/a/a/a/a;->p:[Z

    .line 113
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, La/a/a/a/a;->q:[Ljava/lang/Boolean;

    .line 117
    new-array v0, v1, [C

    sput-object v0, La/a/a/a/a;->r:[C

    .line 121
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, La/a/a/a/a;->s:[Ljava/lang/Character;

    return-void
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1988
    .line 2903
    if-eqz p0, :cond_4

    .line 2909
    if-nez p1, :cond_3

    move v0, v1

    .line 2910
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 2911
    aget-object v3, p0, v0

    if-nez v3, :cond_2

    .line 1988
    :cond_0
    :goto_1
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 2910
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2915
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 2916
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 2917
    aget-object v3, p0, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2916
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 2922
    goto :goto_1
.end method
