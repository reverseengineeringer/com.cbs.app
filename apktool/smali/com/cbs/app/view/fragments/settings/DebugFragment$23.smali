.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$23;
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
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 231
    if-eqz p2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "flurryCheckBox"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "flurryCheckBox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
