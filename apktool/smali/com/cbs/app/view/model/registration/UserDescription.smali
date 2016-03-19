.class public final enum Lcom/cbs/app/view/model/registration/UserDescription;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/view/model/registration/UserDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbs/app/view/model/registration/UserDescription;

.field public static final enum ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

.field public static final enum EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

.field public static final enum REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

.field public static final enum SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

.field public static final enum SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/cbs/app/view/model/registration/UserDescription;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/model/registration/UserDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    new-instance v0, Lcom/cbs/app/view/model/registration/UserDescription;

    const-string v1, "SUBSCRIBER"

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/view/model/registration/UserDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    new-instance v0, Lcom/cbs/app/view/model/registration/UserDescription;

    const-string v1, "ANONYMOUS"

    invoke-direct {v0, v1, v4}, Lcom/cbs/app/view/model/registration/UserDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    new-instance v0, Lcom/cbs/app/view/model/registration/UserDescription;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v5}, Lcom/cbs/app/view/model/registration/UserDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    new-instance v0, Lcom/cbs/app/view/model/registration/UserDescription;

    const-string v1, "EX_SUBSCRIBER"

    invoke-direct {v0, v1, v6}, Lcom/cbs/app/view/model/registration/UserDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cbs/app/view/model/registration/UserDescription;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->$VALUES:[Lcom/cbs/app/view/model/registration/UserDescription;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/cbs/app/view/model/registration/UserDescription;
    .locals 5
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Lcom/cbs/app/view/model/registration/UserDescription;->values()[Lcom/cbs/app/view/model/registration/UserDescription;

    move-result-object v2

    .line 13
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 14
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    :goto_1
    return-object v0

    .line 13
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/view/model/registration/UserDescription;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/registration/UserDescription;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/view/model/registration/UserDescription;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->$VALUES:[Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, [Lcom/cbs/app/view/model/registration/UserDescription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/registration/UserDescription;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
