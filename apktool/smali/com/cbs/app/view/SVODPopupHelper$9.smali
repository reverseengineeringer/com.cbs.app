.class final Lcom/cbs/app/view/SVODPopupHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cbs/app/view/SVODPopupHelper$9;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 730
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$9;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 733
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/SVODPopupHelper$9;->a:Ljava/lang/String;

    sget-object v3, Lcom/cbs/app/view/SVODPopupHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$9;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
