.class public final enum Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum d:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum f:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum g:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field public static final enum h:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

.field private static final synthetic i:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 28
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 31
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 34
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 37
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 40
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 43
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "CANCELED_BY_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 46
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    const-string v1, "ABORT_UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->i:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->i:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    return-object v0
.end method
