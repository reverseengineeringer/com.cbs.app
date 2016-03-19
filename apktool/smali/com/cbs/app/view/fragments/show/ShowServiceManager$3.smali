.class final Lcom/cbs/app/view/fragments/show/ShowServiceManager$3;
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
    .line 56
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$3;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 60
    check-cast p1, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    sput-object p1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    .line 61
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$3;->a:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(I)V

    .line 62
    return-void
.end method
