.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$24;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->d:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 931
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->d:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 932
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    const-string v1, "webcheckbox"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 934
    const-string v1, "weburltext"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 935
    const-string v1, "webtablabel"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 936
    const-string v1, "webtabspinnerposition"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->d:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->f(Lcom/cbs/app/view/fragments/settings/DebugFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 937
    const-string v1, "showidselected"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;->d:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->g(Lcom/cbs/app/view/fragments/settings/DebugFragment;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    return-void
.end method
