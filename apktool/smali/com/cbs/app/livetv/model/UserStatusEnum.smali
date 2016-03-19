.class public final enum Lcom/cbs/app/livetv/model/UserStatusEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/livetv/model/UserStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field public static final enum b:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field public static final enum c:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field public static final enum d:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field public static final enum e:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field private static final synthetic g:[Lcom/cbs/app/livetv/model/UserStatusEnum;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    const-string v1, "ANONYMOUS"

    const-string v2, "anonymous"

    invoke-direct {v0, v1, v3, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    new-instance v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    const-string v1, "REGISTERED"

    const-string v2, "registered"

    invoke-direct {v0, v1, v4, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    new-instance v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    const-string v1, "SUBSCRIBER"

    const-string v2, "subscriber"

    invoke-direct {v0, v1, v5, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->c:Lcom/cbs/app/livetv/model/UserStatusEnum;

    new-instance v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    const-string v1, "SUSPENDED"

    const-string v2, "suspended"

    invoke-direct {v0, v1, v6, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->d:Lcom/cbs/app/livetv/model/UserStatusEnum;

    new-instance v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    const-string v1, "EX_SUBSCRIBER"

    const-string v2, "exsubscriber"

    invoke-direct {v0, v1, v7, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->e:Lcom/cbs/app/livetv/model/UserStatusEnum;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cbs/app/livetv/model/UserStatusEnum;

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->c:Lcom/cbs/app/livetv/model/UserStatusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->d:Lcom/cbs/app/livetv/model/UserStatusEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cbs/app/livetv/model/UserStatusEnum;->e:Lcom/cbs/app/livetv/model/UserStatusEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->g:[Lcom/cbs/app/livetv/model/UserStatusEnum;

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

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/cbs/app/livetv/model/UserStatusEnum;->f:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/livetv/model/UserStatusEnum;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/model/UserStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/livetv/model/UserStatusEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/cbs/app/livetv/model/UserStatusEnum;->g:[Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-virtual {v0}, [Lcom/cbs/app/livetv/model/UserStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/livetv/model/UserStatusEnum;

    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cbs/app/livetv/model/UserStatusEnum;->f:Ljava/lang/String;

    return-object v0
.end method
