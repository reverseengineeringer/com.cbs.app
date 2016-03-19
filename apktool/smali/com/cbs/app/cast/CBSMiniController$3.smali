.class final Lcom/cbs/app/cast/CBSMiniController$3;
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
    .line 186
    iput-object p1, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 191
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSMiniController;->a(Lcom/cbs/app/cast/CBSMiniController;Z)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->C()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    const v1, 0x7f0800b5

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0

    .line 201
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$3;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    move-result-object v0

    const v1, 0x7f0800b2

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;->a(II)V

    goto :goto_0
.end method
