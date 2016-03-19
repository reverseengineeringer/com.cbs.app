.class final Landroid/support/design/widget/s$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/s;->a(Landroid/support/design/widget/q$e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/q$e$a;

.field final synthetic b:Landroid/support/design/widget/s;


# direct methods
.method constructor <init>(Landroid/support/design/widget/s;Landroid/support/design/widget/q$e$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Landroid/support/design/widget/s$2;->b:Landroid/support/design/widget/s;

    iput-object p2, p0, Landroid/support/design/widget/s$2;->a:Landroid/support/design/widget/q$e$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/widget/s$2;->a:Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->b()V

    .line 73
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/s$2;->a:Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->a()V

    .line 68
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
