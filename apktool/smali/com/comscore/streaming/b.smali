.class public final enum Lcom/comscore/streaming/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/streaming/b;

.field public static final enum b:Lcom/comscore/streaming/b;

.field public static final enum c:Lcom/comscore/streaming/b;

.field public static final enum d:Lcom/comscore/streaming/b;

.field public static final enum e:Lcom/comscore/streaming/b;

.field public static final enum f:Lcom/comscore/streaming/b;

.field public static final enum g:Lcom/comscore/streaming/b;

.field public static final enum h:Lcom/comscore/streaming/b;

.field private static final synthetic j:[Lcom/comscore/streaming/b;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "LongFormOnDemand"

    const-string v2, "c11"

    invoke-direct {v0, v1, v4, v2}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->a:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "ShortFormOnDemand"

    const-string v2, "c12"

    invoke-direct {v0, v1, v5, v2}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->b:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "Live"

    const-string v2, "c13"

    invoke-direct {v0, v1, v6, v2}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->c:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "UserGeneratedLongFormOnDemand"

    const-string v2, "c21"

    invoke-direct {v0, v1, v7, v2}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->d:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "UserGeneratedShortFormOnDemand"

    const-string v2, "c22"

    invoke-direct {v0, v1, v8, v2}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->e:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "UserGeneratedLive"

    const/4 v2, 0x5

    const-string v3, "c23"

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->f:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "Bumper"

    const/4 v2, 0x6

    const-string v3, "c99"

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->g:Lcom/comscore/streaming/b;

    new-instance v0, Lcom/comscore/streaming/b;

    const-string v1, "Other"

    const/4 v2, 0x7

    const-string v3, "c00"

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/streaming/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/b;->h:Lcom/comscore/streaming/b;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/comscore/streaming/b;

    sget-object v1, Lcom/comscore/streaming/b;->a:Lcom/comscore/streaming/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/streaming/b;->b:Lcom/comscore/streaming/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/streaming/b;->c:Lcom/comscore/streaming/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/comscore/streaming/b;->d:Lcom/comscore/streaming/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/comscore/streaming/b;->e:Lcom/comscore/streaming/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/comscore/streaming/b;->f:Lcom/comscore/streaming/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/comscore/streaming/b;->g:Lcom/comscore/streaming/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/comscore/streaming/b;->h:Lcom/comscore/streaming/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/streaming/b;->j:[Lcom/comscore/streaming/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/comscore/streaming/b;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/b;
    .locals 1

    const-class v0, Lcom/comscore/streaming/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/b;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/b;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/b;->j:[Lcom/comscore/streaming/b;

    invoke-virtual {v0}, [Lcom/comscore/streaming/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/b;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/b;->i:Ljava/lang/String;

    return-object v0
.end method
