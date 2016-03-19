.class final Lcom/cbs/app/view/fragments/settings/MenuFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/MenuFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/MenuFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment$1;->a:Lcom/cbs/app/view/fragments/settings/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 36
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b()Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment$1;->a:Lcom/cbs/app/view/fragments/settings/MenuFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 38
    const-string v1, "settings_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b()Ljava/lang/String;

    .line 41
    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    .line 42
    invoke-virtual {v0, p3}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(I)V

    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment$1;->a:Lcom/cbs/app/view/fragments/settings/MenuFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->a(Lcom/cbs/app/view/fragments/settings/MenuFragment;)Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->setSelected(I)V

    .line 45
    :cond_0
    return-void
.end method
