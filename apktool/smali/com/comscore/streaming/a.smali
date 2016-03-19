.class public final enum Lcom/comscore/streaming/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/streaming/a;

.field public static final enum b:Lcom/comscore/streaming/a;

.field public static final enum c:Lcom/comscore/streaming/a;

.field public static final enum d:Lcom/comscore/streaming/a;

.field public static final enum e:Lcom/comscore/streaming/a;

.field private static final synthetic g:[Lcom/comscore/streaming/a;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/comscore/streaming/a;

    const-string v1, "LinearOnDemandPreRoll"

    const-string v2, "a11"

    invoke-direct {v0, v1, v3, v2}, Lcom/comscore/streaming/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/a;->a:Lcom/comscore/streaming/a;

    new-instance v0, Lcom/comscore/streaming/a;

    const-string v1, "LinearOnDemandMidRoll"

    const-string v2, "a12"

    invoke-direct {v0, v1, v4, v2}, Lcom/comscore/streaming/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/a;->b:Lcom/comscore/streaming/a;

    new-instance v0, Lcom/comscore/streaming/a;

    const-string v1, "LinearOnDemandPostRoll"

    const-string v2, "a13"

    invoke-direct {v0, v1, v5, v2}, Lcom/comscore/streaming/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/a;->c:Lcom/comscore/streaming/a;

    new-instance v0, Lcom/comscore/streaming/a;

    const-string v1, "LinearLive"

    const-string v2, "a21"

    invoke-direct {v0, v1, v6, v2}, Lcom/comscore/streaming/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/a;->d:Lcom/comscore/streaming/a;

    new-instance v0, Lcom/comscore/streaming/a;

    const-string v1, "Other"

    const-string v2, "a00"

    invoke-direct {v0, v1, v7, v2}, Lcom/comscore/streaming/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/a;->e:Lcom/comscore/streaming/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/comscore/streaming/a;

    sget-object v1, Lcom/comscore/streaming/a;->a:Lcom/comscore/streaming/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/streaming/a;->b:Lcom/comscore/streaming/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/streaming/a;->c:Lcom/comscore/streaming/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/streaming/a;->d:Lcom/comscore/streaming/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/comscore/streaming/a;->e:Lcom/comscore/streaming/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/comscore/streaming/a;->g:[Lcom/comscore/streaming/a;

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

    iput-object p3, p0, Lcom/comscore/streaming/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/a;
    .locals 1

    const-class v0, Lcom/comscore/streaming/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/a;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/a;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/a;->g:[Lcom/comscore/streaming/a;

    invoke-virtual {v0}, [Lcom/comscore/streaming/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/a;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/a;->f:Ljava/lang/String;

    return-object v0
.end method
