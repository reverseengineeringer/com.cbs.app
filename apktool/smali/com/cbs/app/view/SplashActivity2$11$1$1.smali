.class final Lcom/cbs/app/view/SplashActivity2$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2$11$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$11$1;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$11$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 892
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbs/app/view/SplashActivity2$11$1$1$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SplashActivity2$11$1$1$1;-><init>(Lcom/cbs/app/view/SplashActivity2$11$1$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 879
    return-void
.end method
