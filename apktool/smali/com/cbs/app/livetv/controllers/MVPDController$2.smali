.class final Lcom/cbs/app/livetv/controllers/MVPDController$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/MVPDController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/MVPDController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/MVPDController;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController$2;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$2;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->d(Lcom/cbs/app/livetv/controllers/MVPDController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/cbs/app/livetv/controllers/MVPDController$2;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    :cond_0
    return-void
.end method
