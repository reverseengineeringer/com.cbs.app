.class final Lcom/cbs/app/view/fragments/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity$1;->a:Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->b()Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity$1;->a:Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->a()V

    .line 30
    return-void
.end method
