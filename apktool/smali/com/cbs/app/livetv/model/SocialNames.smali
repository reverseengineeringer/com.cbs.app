.class public final enum Lcom/cbs/app/livetv/model/SocialNames;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/livetv/model/SocialNames;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cbs/app/livetv/model/SocialNames;

.field public static final enum b:Lcom/cbs/app/livetv/model/SocialNames;

.field public static final enum c:Lcom/cbs/app/livetv/model/SocialNames;

.field private static final synthetic e:[Lcom/cbs/app/livetv/model/SocialNames;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/cbs/app/livetv/model/SocialNames;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v3, v2}, Lcom/cbs/app/livetv/model/SocialNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/SocialNames;->a:Lcom/cbs/app/livetv/model/SocialNames;

    new-instance v0, Lcom/cbs/app/livetv/model/SocialNames;

    const-string v1, "GOOGLE"

    const-string v2, "google"

    invoke-direct {v0, v1, v4, v2}, Lcom/cbs/app/livetv/model/SocialNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    new-instance v0, Lcom/cbs/app/livetv/model/SocialNames;

    const-string v1, "TWITTER"

    const-string v2, "twitter"

    invoke-direct {v0, v1, v5, v2}, Lcom/cbs/app/livetv/model/SocialNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/livetv/model/SocialNames;->c:Lcom/cbs/app/livetv/model/SocialNames;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cbs/app/livetv/model/SocialNames;

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->a:Lcom/cbs/app/livetv/model/SocialNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->c:Lcom/cbs/app/livetv/model/SocialNames;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cbs/app/livetv/model/SocialNames;->e:[Lcom/cbs/app/livetv/model/SocialNames;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/cbs/app/livetv/model/SocialNames;->d:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/livetv/model/SocialNames;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/cbs/app/livetv/model/SocialNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/model/SocialNames;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/livetv/model/SocialNames;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/cbs/app/livetv/model/SocialNames;->e:[Lcom/cbs/app/livetv/model/SocialNames;

    invoke-virtual {v0}, [Lcom/cbs/app/livetv/model/SocialNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/livetv/model/SocialNames;

    return-object v0
.end method


# virtual methods
.method public final getNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cbs/app/livetv/model/SocialNames;->d:Ljava/lang/String;

    return-object v0
.end method
