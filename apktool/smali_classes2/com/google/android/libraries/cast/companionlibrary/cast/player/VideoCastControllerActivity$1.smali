.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;
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
    .line 163
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->b()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to temporary network issue"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 174
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 177
    :catch_2
    move-exception v0

    .line 178
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to other issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_perform_action:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
