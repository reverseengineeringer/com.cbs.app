.class final Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;
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
    .line 142
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Z)V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    iget-object v1, v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_perform_action:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0
.end method
