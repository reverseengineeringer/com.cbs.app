.class public final enum Lcom/comscore/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/a/d;

.field public static final enum b:Lcom/comscore/a/d;

.field public static final enum c:Lcom/comscore/a/d;

.field public static final enum d:Lcom/comscore/a/d;

.field private static final synthetic e:[Lcom/comscore/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/a/d;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/comscore/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/a/d;->a:Lcom/comscore/a/d;

    new-instance v0, Lcom/comscore/a/d;

    const-string v1, "APPLICATION"

    invoke-direct {v0, v1, v3}, Lcom/comscore/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/a/d;->b:Lcom/comscore/a/d;

    new-instance v0, Lcom/comscore/a/d;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Lcom/comscore/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/a/d;->c:Lcom/comscore/a/d;

    new-instance v0, Lcom/comscore/a/d;

    const-string v1, "ACTIVE_USER"

    invoke-direct {v0, v1, v5}, Lcom/comscore/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/a/d;->d:Lcom/comscore/a/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/comscore/a/d;

    sget-object v1, Lcom/comscore/a/d;->a:Lcom/comscore/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/a/d;->b:Lcom/comscore/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/a/d;->c:Lcom/comscore/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/a/d;->d:Lcom/comscore/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/comscore/a/d;->e:[Lcom/comscore/a/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/a/d;
    .locals 1

    const-class v0, Lcom/comscore/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/a/d;

    return-object v0
.end method

.method public static values()[Lcom/comscore/a/d;
    .locals 1

    sget-object v0, Lcom/comscore/a/d;->e:[Lcom/comscore/a/d;

    invoke-virtual {v0}, [Lcom/comscore/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/a/d;

    return-object v0
.end method
