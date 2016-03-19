.class final Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/ShowServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    sput-object p1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;->a()V

    .line 33
    :cond_0
    return-void
.end method
