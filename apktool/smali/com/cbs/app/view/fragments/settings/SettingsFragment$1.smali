.class final Lcom/cbs/app/view/fragments/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$1;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f()Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 49
    return-void
.end method
