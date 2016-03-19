.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$16;
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
    .line 638
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 642
    const/4 v0, 0x0

    .line 643
    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_0
    if-eqz v0, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cbs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 651
    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 654
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    .line 659
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->finish()V

    .line 665
    :cond_2
    :goto_0
    return-void

    .line 663
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v1, "You must enter a valid deep link."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
