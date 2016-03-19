.class final Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Z)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->C()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_perform_action:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0
.end method
