.class final Landroid/support/design/widget/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/s;->a(Landroid/support/design/widget/q$e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/q$e$b;

.field final synthetic b:Landroid/support/design/widget/s;


# direct methods
.method constructor <init>(Landroid/support/design/widget/s;Landroid/support/design/widget/q$e$b;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/design/widget/s$1;->b:Landroid/support/design/widget/s;

    iput-object p2, p0, Landroid/support/design/widget/s$1;->a:Landroid/support/design/widget/q$e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/s$1;->a:Landroid/support/design/widget/q$e$b;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$b;->a()V

    .line 53
    return-void
.end method
