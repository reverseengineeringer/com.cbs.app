.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;B)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method
