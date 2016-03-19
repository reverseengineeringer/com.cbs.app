.class final Lcom/cbs/app/view/SplashActivity2$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/SplashActivity2$10;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$10;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->b:Lcom/cbs/app/view/SplashActivity2$10;

    iput-object p2, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->b:Lcom/cbs/app/view/SplashActivity2$10;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->a:Landroid/app/Activity;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_0

    .line 729
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->a:Landroid/app/Activity;

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$10$1;->b:Lcom/cbs/app/view/SplashActivity2$10;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0, v2}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;I)V

    .line 737
    :cond_2
    return-void
.end method
