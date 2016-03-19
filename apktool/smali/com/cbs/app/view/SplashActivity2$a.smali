.class final Lcom/cbs/app/view/SplashActivity2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$a;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$a;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$a;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getSplashRootView()Landroid/view/View;

    move-result-object v0

    .line 1192
    if-eqz v0, :cond_0

    .line 1193
    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1195
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$a;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->o(Lcom/cbs/app/view/SplashActivity2;)Z

    .line 1201
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1204
    return-void
.end method
