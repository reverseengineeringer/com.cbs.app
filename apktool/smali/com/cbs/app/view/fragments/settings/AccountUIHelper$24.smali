.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setupCreateDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1914
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0f014c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1915
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v0

    const v2, 0x7f0f013f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1917
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24$1;-><init>(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1925
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1930
    return-void
.end method
