.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    .line 188
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d()Ljava/lang/String;

    const-string v0, "Timer is expired, going to interrupt the thread"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method
