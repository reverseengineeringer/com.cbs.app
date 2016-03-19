.class final Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment$1;->a:Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 38
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->b()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/j;->a(Z)V

    .line 43
    return-void
.end method
