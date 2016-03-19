.class final Lcom/cbs/app/view/SplashActivity2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$1;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$1;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$1;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->finish()V

    .line 105
    :cond_0
    return-void
.end method
