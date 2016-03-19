.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 410
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 411
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->a:F

    .line 412
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->a:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->a:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v1, "Latitude vaule must be between:\n-90.00 and +90.00"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 419
    :cond_1
    return-void
.end method
