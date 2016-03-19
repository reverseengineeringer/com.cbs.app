.class final enum Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

.field public static final enum b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

.field public static final enum c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

.field private static final synthetic d:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    const-string v1, "AUTHORIZING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    const-string v1, "PLAYBACK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->d:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->d:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    invoke-virtual {v0}, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    return-object v0
.end method
