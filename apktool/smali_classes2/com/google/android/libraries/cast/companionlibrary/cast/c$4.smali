.class final Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 1

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1458
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2461
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a()Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a()V

    .line 1458
    :cond_0
    return-void
.end method
