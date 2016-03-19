.class final Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/ResumeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/cbs/app/view/fragments/ResumeDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ResumeDialogFragment;Landroid/app/Dialog;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->d:Lcom/cbs/app/view/fragments/ResumeDialogFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->d:Lcom/cbs/app/view/fragments/ResumeDialogFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->b:Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;->a()V

    .line 83
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->b:Ljava/util/HashMap;

    const-string v1, "Action"

    const-string v2, "continue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->c:Landroid/content/Context;

    sget-object v1, Lcom/cbs/app/analytics/Action;->bS:Lcom/cbs/app/analytics/Action;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 87
    return-void
.end method
