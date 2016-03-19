.class final Lcom/cbs/app/cast/CBSMiniController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSMiniController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSMiniController;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSMiniController;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSMiniController;->a(Lcom/cbs/app/cast/CBSMiniController;Z)V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    iget-object v1, v1, Lcom/cbs/app/cast/CBSMiniController;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$4;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    const v1, 0x7f0800b5

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0
.end method
