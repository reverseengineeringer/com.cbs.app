.class public final enum Lcom/comscore/utils/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/utils/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/utils/m;

.field public static final enum b:Lcom/comscore/utils/m;

.field public static final enum c:Lcom/comscore/utils/m;

.field public static final enum d:Lcom/comscore/utils/m;

.field public static final enum e:Lcom/comscore/utils/m;

.field private static final synthetic f:[Lcom/comscore/utils/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/utils/m;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/comscore/utils/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    new-instance v0, Lcom/comscore/utils/m;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v3}, Lcom/comscore/utils/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/utils/m;->b:Lcom/comscore/utils/m;

    new-instance v0, Lcom/comscore/utils/m;

    const-string v1, "WIFIONLY"

    invoke-direct {v0, v1, v4}, Lcom/comscore/utils/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/utils/m;->c:Lcom/comscore/utils/m;

    new-instance v0, Lcom/comscore/utils/m;

    const-string v1, "PIGGYBACK"

    invoke-direct {v0, v1, v5}, Lcom/comscore/utils/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/utils/m;->d:Lcom/comscore/utils/m;

    new-instance v0, Lcom/comscore/utils/m;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/comscore/utils/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/utils/m;->e:Lcom/comscore/utils/m;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/comscore/utils/m;

    sget-object v1, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/utils/m;->b:Lcom/comscore/utils/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/utils/m;->c:Lcom/comscore/utils/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/utils/m;->d:Lcom/comscore/utils/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/utils/m;->e:Lcom/comscore/utils/m;

    aput-object v1, v0, v6

    sput-object v0, Lcom/comscore/utils/m;->f:[Lcom/comscore/utils/m;

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

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/utils/m;
    .locals 1

    const-class v0, Lcom/comscore/utils/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/m;

    return-object v0
.end method

.method public static values()[Lcom/comscore/utils/m;
    .locals 1

    sget-object v0, Lcom/comscore/utils/m;->f:[Lcom/comscore/utils/m;

    invoke-virtual {v0}, [Lcom/comscore/utils/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/utils/m;

    return-object v0
.end method
