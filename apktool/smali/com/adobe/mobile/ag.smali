.class public final enum Lcom/adobe/mobile/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/mobile/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/mobile/ag;

.field public static final enum b:Lcom/adobe/mobile/ag;

.field public static final enum c:Lcom/adobe/mobile/ag;

.field private static final synthetic e:[Lcom/adobe/mobile/ag;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/adobe/mobile/ag;

    const-string v1, "MOBILE_PRIVACY_STATUS_OPT_IN"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/mobile/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ag;->a:Lcom/adobe/mobile/ag;

    .line 23
    new-instance v0, Lcom/adobe/mobile/ag;

    const-string v1, "MOBILE_PRIVACY_STATUS_OPT_OUT"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/mobile/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ag;->b:Lcom/adobe/mobile/ag;

    .line 24
    new-instance v0, Lcom/adobe/mobile/ag;

    const-string v1, "MOBILE_PRIVACY_STATUS_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/mobile/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ag;->c:Lcom/adobe/mobile/ag;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/mobile/ag;

    sget-object v1, Lcom/adobe/mobile/ag;->a:Lcom/adobe/mobile/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/mobile/ag;->b:Lcom/adobe/mobile/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/mobile/ag;->c:Lcom/adobe/mobile/ag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/mobile/ag;->e:[Lcom/adobe/mobile/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/adobe/mobile/ag;->d:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/mobile/ag;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/mobile/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/ag;

    return-object v0
.end method

.method public static values()[Lcom/adobe/mobile/ag;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adobe/mobile/ag;->e:[Lcom/adobe/mobile/ag;

    invoke-virtual {v0}, [Lcom/adobe/mobile/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/mobile/ag;

    return-object v0
.end method
