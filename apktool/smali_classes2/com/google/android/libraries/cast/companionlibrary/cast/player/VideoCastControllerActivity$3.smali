.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :goto_1
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get the media"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_1
.end method
