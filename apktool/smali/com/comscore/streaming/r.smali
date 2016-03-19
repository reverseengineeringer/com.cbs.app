.class final enum Lcom/comscore/streaming/r;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/streaming/r;

.field public static final enum b:Lcom/comscore/streaming/r;

.field public static final enum c:Lcom/comscore/streaming/r;

.field private static final synthetic d:[Lcom/comscore/streaming/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/streaming/r;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/comscore/streaming/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/r;->a:Lcom/comscore/streaming/r;

    new-instance v0, Lcom/comscore/streaming/r;

    const-string v1, "AudioContent"

    invoke-direct {v0, v1, v3}, Lcom/comscore/streaming/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/r;->b:Lcom/comscore/streaming/r;

    new-instance v0, Lcom/comscore/streaming/r;

    const-string v1, "VideoContent"

    invoke-direct {v0, v1, v4}, Lcom/comscore/streaming/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/r;->c:Lcom/comscore/streaming/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/comscore/streaming/r;

    sget-object v1, Lcom/comscore/streaming/r;->a:Lcom/comscore/streaming/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/streaming/r;->b:Lcom/comscore/streaming/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/streaming/r;->c:Lcom/comscore/streaming/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/comscore/streaming/r;->d:[Lcom/comscore/streaming/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/r;
    .locals 1

    const-class v0, Lcom/comscore/streaming/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/r;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/r;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/r;->d:[Lcom/comscore/streaming/r;

    invoke-virtual {v0}, [Lcom/comscore/streaming/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/r;

    return-object v0
.end method
