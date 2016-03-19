.class final Landroid/support/design/widget/Snackbar$9;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$9;->b:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Landroid/support/design/widget/Snackbar$9;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$9;->b:Landroid/support/design/widget/Snackbar;

    iget v1, p0, Landroid/support/design/widget/Snackbar$9;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;I)V

    .line 568
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$9;->b:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c()V

    .line 563
    return-void
.end method
