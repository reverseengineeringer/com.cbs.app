.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 371
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 372
    if-eqz p3, :cond_0

    .line 373
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->clearFocus()V

    .line 374
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    .line 375
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    .line 376
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 378
    :cond_0
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
    .line 382
    return-void
.end method
