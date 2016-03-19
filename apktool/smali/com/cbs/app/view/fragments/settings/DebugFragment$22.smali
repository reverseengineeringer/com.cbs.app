.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/Spinner;

.field final synthetic f:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->f:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->c:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->e:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 900
    if-eqz p2, :cond_0

    .line 901
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->c:Landroid/content/SharedPreferences;

    const-string v2, "weburltext"

    const-string v3, "http://www.cbs.com/shows/big_brother/live_feed/"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->f:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->c:Landroid/content/SharedPreferences;

    const-string v2, "webtabspinnerposition"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;I)I

    .line 905
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->f:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->c:Landroid/content/SharedPreferences;

    const-string v2, "showidselected"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;J)J

    .line 906
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->c:Landroid/content/SharedPreferences;

    const-string v2, "webtablabel"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->e:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->f:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->f(Lcom/cbs/app/view/fragments/settings/DebugFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 922
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;->f:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 913
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 914
    const-string v1, "webcheckbox"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 915
    const-string v1, "weburltext"

    const-string v2, "http://www.cbs.com/shows/big_brother/live_feed/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 916
    const-string v1, "webtablabel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 917
    const-string v1, "webtabspinnerposition"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 918
    const-string v1, "showidselected"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 919
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
