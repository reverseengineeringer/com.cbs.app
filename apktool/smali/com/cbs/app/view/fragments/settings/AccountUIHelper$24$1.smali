.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->c:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->a:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1921
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1922
    return-void
.end method
