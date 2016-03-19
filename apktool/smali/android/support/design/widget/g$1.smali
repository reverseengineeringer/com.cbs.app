.class final Landroid/support/design/widget/g$1;
.super Landroid/support/design/widget/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/i$a;

.field final synthetic b:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;Landroid/support/design/widget/i$a;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Landroid/support/design/widget/g$1;->b:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/g$1;->a:Landroid/support/design/widget/i$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/design/widget/g$1;->b:Landroid/support/design/widget/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;Z)Z

    .line 180
    iget-object v0, p0, Landroid/support/design/widget/g$1;->b:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/design/widget/g$1;->b:Landroid/support/design/widget/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;Z)Z

    .line 175
    return-void
.end method
