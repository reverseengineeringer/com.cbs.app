.class public final enum Lcom/urbanairship/preference/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/preference/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/preference/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/urbanairship/preference/a$a;

.field public static final enum b:Lcom/urbanairship/preference/a$a;

.field public static final enum c:Lcom/urbanairship/preference/a$a;

.field public static final enum d:Lcom/urbanairship/preference/a$a;

.field public static final enum e:Lcom/urbanairship/preference/a$a;

.field public static final enum f:Lcom/urbanairship/preference/a$a;

.field public static final enum g:Lcom/urbanairship/preference/a$a;

.field public static final enum h:Lcom/urbanairship/preference/a$a;

.field public static final enum i:Lcom/urbanairship/preference/a$a;

.field public static final enum j:Lcom/urbanairship/preference/a$a;

.field public static final enum k:Lcom/urbanairship/preference/a$a;

.field private static final synthetic l:[Lcom/urbanairship/preference/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "USER_NOTIFICATIONS_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->a:Lcom/urbanairship/preference/a$a;

    .line 46
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "SOUND_ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->b:Lcom/urbanairship/preference/a$a;

    .line 51
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "VIBRATE_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->c:Lcom/urbanairship/preference/a$a;

    .line 56
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "QUIET_TIME_ENABLED"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->d:Lcom/urbanairship/preference/a$a;

    .line 61
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "QUIET_TIME_START"

    invoke-direct {v0, v1, v7}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->e:Lcom/urbanairship/preference/a$a;

    .line 66
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "QUIET_TIME_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->f:Lcom/urbanairship/preference/a$a;

    .line 71
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->g:Lcom/urbanairship/preference/a$a;

    .line 76
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "LOCATION_BACKGROUND_UPDATES_ALLOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->h:Lcom/urbanairship/preference/a$a;

    .line 81
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "CHANNEL_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->i:Lcom/urbanairship/preference/a$a;

    .line 86
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "USER_ID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->j:Lcom/urbanairship/preference/a$a;

    .line 91
    new-instance v0, Lcom/urbanairship/preference/a$a;

    const-string v1, "ANALYTICS_ENABLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/a$a;->k:Lcom/urbanairship/preference/a$a;

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/urbanairship/preference/a$a;

    sget-object v1, Lcom/urbanairship/preference/a$a;->a:Lcom/urbanairship/preference/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/preference/a$a;->b:Lcom/urbanairship/preference/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/preference/a$a;->c:Lcom/urbanairship/preference/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/preference/a$a;->d:Lcom/urbanairship/preference/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/urbanairship/preference/a$a;->e:Lcom/urbanairship/preference/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/urbanairship/preference/a$a;->f:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/urbanairship/preference/a$a;->g:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/urbanairship/preference/a$a;->h:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/urbanairship/preference/a$a;->i:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/urbanairship/preference/a$a;->j:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/urbanairship/preference/a$a;->k:Lcom/urbanairship/preference/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/preference/a$a;->l:[Lcom/urbanairship/preference/a$a;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/preference/a$a;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/urbanairship/preference/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/preference/a$a;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/preference/a$a;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/urbanairship/preference/a$a;->l:[Lcom/urbanairship/preference/a$a;

    invoke-virtual {v0}, [Lcom/urbanairship/preference/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/preference/a$a;

    return-object v0
.end method
