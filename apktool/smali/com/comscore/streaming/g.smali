.class public final enum Lcom/comscore/streaming/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/streaming/g;

.field public static final enum b:Lcom/comscore/streaming/g;

.field public static final enum c:Lcom/comscore/streaming/g;

.field public static final enum d:Lcom/comscore/streaming/g;

.field private static final synthetic h:[Lcom/comscore/streaming/g;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/comscore/streaming/e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/streaming/g;

    const-string v1, "IDLE"

    const-string v3, "idle"

    sget-object v5, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/comscore/streaming/g;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/comscore/streaming/e;)V

    sput-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    new-instance v3, Lcom/comscore/streaming/g;

    const-string v4, "PLAYING"

    const-string v6, "playing"

    sget-object v8, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    move v5, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/comscore/streaming/g;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/comscore/streaming/e;)V

    sput-object v3, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    new-instance v3, Lcom/comscore/streaming/g;

    const-string v4, "PAUSED"

    const-string v6, "paused"

    sget-object v8, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    move v5, v10

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/comscore/streaming/g;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/comscore/streaming/e;)V

    sput-object v3, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    new-instance v3, Lcom/comscore/streaming/g;

    const-string v4, "BUFFERING"

    const-string v6, "buffering"

    sget-object v8, Lcom/comscore/streaming/e;->d:Lcom/comscore/streaming/e;

    move v5, v11

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/comscore/streaming/g;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/comscore/streaming/e;)V

    sput-object v3, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/comscore/streaming/g;

    sget-object v1, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    aput-object v1, v0, v9

    sget-object v1, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    aput-object v1, v0, v10

    sget-object v1, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    aput-object v1, v0, v11

    sput-object v0, Lcom/comscore/streaming/g;->h:[Lcom/comscore/streaming/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/comscore/streaming/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/comscore/streaming/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/comscore/streaming/g;->e:Ljava/lang/String;

    iput p4, p0, Lcom/comscore/streaming/g;->f:I

    iput-object p5, p0, Lcom/comscore/streaming/g;->g:Lcom/comscore/streaming/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/g;
    .locals 1

    const-class v0, Lcom/comscore/streaming/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/g;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/g;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/g;->h:[Lcom/comscore/streaming/g;

    invoke-virtual {v0}, [Lcom/comscore/streaming/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/g;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/comscore/streaming/e;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/g;->g:Lcom/comscore/streaming/e;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/comscore/streaming/g;->e:Ljava/lang/String;

    .line 0
    return-object v0
.end method
