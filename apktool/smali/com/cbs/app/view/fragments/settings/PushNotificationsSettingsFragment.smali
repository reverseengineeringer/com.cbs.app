.class public Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 32
    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    const v0, 0x7f0f0240

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 34
    new-instance v2, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->d()Z

    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    return-object v1
.end method
