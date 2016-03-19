.class final Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->R()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;Z)V

    .line 292
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;Z)V

    .line 295
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    :catch_2
    move-exception v0

    goto :goto_1
.end method
