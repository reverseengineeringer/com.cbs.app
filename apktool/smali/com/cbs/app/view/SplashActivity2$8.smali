.class final Lcom/cbs/app/view/SplashActivity2$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;


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
    .line 281
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->c:Z

    .line 286
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->a()V

    .line 288
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getTonightData()V

    .line 290
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->c:Z

    .line 296
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->h(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 297
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->i(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/registration/UserStatus;

    .line 298
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    const-string v1, "ANONYMOUS"

    invoke-static {v0, v1}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$8;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getTonightData()V

    .line 304
    return-void
.end method
