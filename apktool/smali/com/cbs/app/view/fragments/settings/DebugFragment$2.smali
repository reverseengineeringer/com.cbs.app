.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$2;
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
.field final synthetic a:Lcom/cbs/app/view/MainApplication;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Lcom/cbs/app/view/MainApplication;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->a:Lcom/cbs/app/view/MainApplication;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->a:Lcom/cbs/app/view/MainApplication;

    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->e()V

    .line 344
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;->b:Landroid/widget/EditText;

    const-string v1, "b700a363a73b9ada"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method
