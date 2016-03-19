.class final Landroid/support/design/widget/Snackbar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->c()V
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
    .line 444
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)V

    .line 448
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 456
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/n$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->c(Landroid/support/design/widget/n$a;)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/n$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->d(Landroid/support/design/widget/n$a;)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
