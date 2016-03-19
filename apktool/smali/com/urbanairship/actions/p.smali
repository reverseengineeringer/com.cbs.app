.class public final enum Lcom/urbanairship/actions/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/actions/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/urbanairship/actions/p;

.field public static final enum b:Lcom/urbanairship/actions/p;

.field public static final enum c:Lcom/urbanairship/actions/p;

.field public static final enum d:Lcom/urbanairship/actions/p;

.field public static final enum e:Lcom/urbanairship/actions/p;

.field public static final enum f:Lcom/urbanairship/actions/p;

.field private static final synthetic g:[Lcom/urbanairship/actions/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "MANUAL_INVOCATION"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->a:Lcom/urbanairship/actions/p;

    .line 40
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "PUSH_RECEIVED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->b:Lcom/urbanairship/actions/p;

    .line 45
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "PUSH_OPENED"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->c:Lcom/urbanairship/actions/p;

    .line 50
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "WEB_VIEW_INVOCATION"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->d:Lcom/urbanairship/actions/p;

    .line 55
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "FOREGROUND_NOTIFICATION_ACTION_BUTTON"

    invoke-direct {v0, v1, v7}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->e:Lcom/urbanairship/actions/p;

    .line 60
    new-instance v0, Lcom/urbanairship/actions/p;

    const-string v1, "BACKGROUND_NOTIFICATION_ACTION_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/actions/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/p;->f:Lcom/urbanairship/actions/p;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/urbanairship/actions/p;

    sget-object v1, Lcom/urbanairship/actions/p;->a:Lcom/urbanairship/actions/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/actions/p;->b:Lcom/urbanairship/actions/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/actions/p;->c:Lcom/urbanairship/actions/p;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/actions/p;->d:Lcom/urbanairship/actions/p;

    aput-object v1, v0, v6

    sget-object v1, Lcom/urbanairship/actions/p;->e:Lcom/urbanairship/actions/p;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/urbanairship/actions/p;->f:Lcom/urbanairship/actions/p;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/actions/p;->g:[Lcom/urbanairship/actions/p;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/actions/p;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/urbanairship/actions/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/p;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/actions/p;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/urbanairship/actions/p;->g:[Lcom/urbanairship/actions/p;

    invoke-virtual {v0}, [Lcom/urbanairship/actions/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/actions/p;

    return-object v0
.end method
