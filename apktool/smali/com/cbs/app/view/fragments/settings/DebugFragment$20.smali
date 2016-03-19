.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$20;
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

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Landroid/widget/CheckBox;

.field final synthetic h:Landroid/widget/CheckBox;

.field final synthetic i:Landroid/widget/CheckBox;

.field final synthetic j:Landroid/widget/CheckBox;

.field final synthetic k:Landroid/widget/CheckBox;

.field final synthetic l:Landroid/widget/EditText;

.field final synthetic m:Landroid/widget/Spinner;

.field final synthetic n:Landroid/widget/ArrayAdapter;

.field final synthetic o:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->e:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->f:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->g:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->h:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->i:Landroid/widget/CheckBox;

    iput-object p11, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->j:Landroid/widget/CheckBox;

    iput-object p12, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->k:Landroid/widget/CheckBox;

    iput-object p13, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->l:Landroid/widget/EditText;

    iput-object p14, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->m:Landroid/widget/Spinner;

    iput-object p15, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->n:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    .prologue
    .line 773
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 774
    const/4 v0, 0x0

    .line 775
    if-eqz v1, :cond_a

    .line 776
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 779
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 780
    const/4 v0, 0x0

    .line 781
    if-eqz v2, :cond_9

    .line 782
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 785
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 786
    const/4 v0, 0x0

    .line 787
    if-eqz v3, :cond_0

    .line 788
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    :cond_0
    if-eqz v0, :cond_8

    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 792
    const-string v0, "CC1AD845"

    move-object v3, v0

    .line 795
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 796
    const/4 v0, 0x0

    .line 797
    if-eqz v4, :cond_1

    .line 798
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 802
    const/4 v0, 0x1

    .line 803
    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->e:Landroid/widget/CheckBox;

    if-eqz v4, :cond_7

    .line 804
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    move v4, v0

    .line 806
    :goto_3
    const/4 v0, 0x1

    .line 807
    iget-object v5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->f:Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    .line 808
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    move v5, v0

    .line 812
    :goto_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 815
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 818
    const/4 v0, 0x1

    .line 819
    iget-object v6, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->i:Landroid/widget/CheckBox;

    if-eqz v6, :cond_5

    .line 820
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    move v6, v0

    .line 822
    :goto_5
    const/4 v0, 0x0

    .line 823
    iget-object v7, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->j:Landroid/widget/CheckBox;

    if-eqz v7, :cond_4

    .line 824
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    move v7, v0

    .line 828
    :goto_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 829
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 832
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 833
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 834
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->m:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 835
    iget-object v14, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->n:Landroid/widget/ArrayAdapter;

    invoke-virtual {v14, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    const-string v14, "ab_type"

    invoke-interface {v13, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 837
    const-string v0, "cbs_appsecret"

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    const-string v0, "chromecast_id"

    invoke-interface {v13, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    const-string v0, "use_debug_mdialog"

    invoke-interface {v13, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 841
    const-string v0, "use_debug_conviva"

    invoke-interface {v13, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 843
    const-string v0, "allow_https"

    invoke-interface {v13, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 845
    const-string v0, "use_cc_vod_override"

    invoke-interface {v13, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 846
    const-string v0, "cc_vod_override"

    invoke-interface {v13, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 849
    if-eqz v2, :cond_2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 850
    const-string v0, "cbs_base_uri"

    invoke-interface {v13, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 852
    :cond_2
    const-string v0, "show_events"

    invoke-interface {v13, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 853
    const-string v0, "useResponseCache"

    invoke-interface {v13, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    const-string v0, "unicornUAT"

    invoke-interface {v13, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 855
    const-string v0, "maxBufferTime"

    invoke-interface {v13, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 856
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 857
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v3, "Saved"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 859
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;->o:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 861
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->h()V

    .line 865
    :cond_3
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v0

    .line 866
    invoke-virtual {v0, v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setCbsHost(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v1}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setCbsAppSecret(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, v5}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setUseHttps(Z)V

    .line 869
    invoke-virtual {v0, v4}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setUseResponseCache(Z)V

    .line 871
    return-void

    :cond_4
    move v7, v0

    goto/16 :goto_6

    :cond_5
    move v6, v0

    goto/16 :goto_5

    :cond_6
    move v5, v0

    goto/16 :goto_4

    :cond_7
    move v4, v0

    goto/16 :goto_3

    :cond_8
    move-object v3, v0

    goto/16 :goto_2

    :cond_9
    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method
