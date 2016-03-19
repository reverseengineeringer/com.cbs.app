.class final Landroid/support/design/widget/h$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/i$a;

.field final synthetic b:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;Landroid/support/design/widget/i$a;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/design/widget/h$2;->b:Landroid/support/design/widget/h;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h$2;->a:Landroid/support/design/widget/i$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/design/widget/h$2;->b:Landroid/support/design/widget/h;

    iget-object v0, v0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
