.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.venezia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->a:Landroid/widget/EditText;

    const-string v1, "9a06af4666595a16"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;->a:Landroid/widget/EditText;

    const-string v1, "b700a363a73b9ada"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
