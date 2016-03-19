.class final Lcom/cbs/app/view/SplashActivity2$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/SplashActivity2$11;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$11;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$11$1;->b:Lcom/cbs/app/view/SplashActivity2$11;

    iput-object p2, p0, Lcom/cbs/app/view/SplashActivity2$11$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 874
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 875
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    new-instance v2, Lcom/cbs/app/view/SplashActivity2$11$1$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/SplashActivity2$11$1$1;-><init>(Lcom/cbs/app/view/SplashActivity2$11$1;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 911
    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$11$1;->b:Lcom/cbs/app/view/SplashActivity2$11;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2$11;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$11$1;->b:Lcom/cbs/app/view/SplashActivity2$11;

    iget-object v1, v1, Lcom/cbs/app/view/SplashActivity2$11;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$11$1;->b:Lcom/cbs/app/view/SplashActivity2$11;

    iget-object v1, v1, Lcom/cbs/app/view/SplashActivity2$11;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 915
    :cond_0
    return-void
.end method
