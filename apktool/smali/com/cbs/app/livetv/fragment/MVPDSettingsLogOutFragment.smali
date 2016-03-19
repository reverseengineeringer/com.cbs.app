.class public Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;

.field private c:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->c:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    .line 1147
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1148
    const v1, 0x7f0801a3

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1149
    const v1, 0x7f0801a2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$5;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a1

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$4;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$3;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1168
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 37
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    :goto_0
    return-void

    .line 122
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->f()V

    .line 125
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;

    invoke-interface {v0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;->a()V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->f()V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;

    invoke-interface {v0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;->a()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1f42
        :pswitch_0
    .end packed-switch

    .line 122
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->c:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 91
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->h()V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 96
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement OnLogOutSelectedListener"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    const v0, 0x7f0300bd

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 104
    const v0, 0x7f0f02b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    const v1, 0x7f0f02b7

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v3

    .line 107
    const v4, 0x7f0801a6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v1, 0x7f0801a4

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v1, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;

    invoke-direct {v1, p0, v3}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object v2
.end method
