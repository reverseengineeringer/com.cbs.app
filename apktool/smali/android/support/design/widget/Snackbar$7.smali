.class final Landroid/support/design/widget/Snackbar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->e(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->e(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$b;

    .line 526
    :cond_0
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/n$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$a;)V

    .line 527
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b()V

    .line 519
    return-void
.end method
