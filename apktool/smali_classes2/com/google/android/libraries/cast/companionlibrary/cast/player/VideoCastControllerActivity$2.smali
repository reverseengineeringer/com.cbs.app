.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 185
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to set the progress result"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to start seek"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    goto :goto_0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->a(Landroid/widget/SeekBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to complete seek"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    goto :goto_0
.end method
