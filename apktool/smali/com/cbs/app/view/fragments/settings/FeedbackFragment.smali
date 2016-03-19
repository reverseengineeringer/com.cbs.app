.class public Lcom/cbs/app/view/fragments/settings/FeedbackFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field protected static final h:Ljava/lang/String;


# instance fields
.field i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/16 v10, 0xa

    const/4 v3, 0x0

    .line 44
    .line 1059
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    .line 1062
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "support.cbs.android@cbsinteractive.com"

    aput-object v0, v6, v3

    .line 1064
    const-string v7, "CBS Android app Feedback"

    .line 1070
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1075
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :try_start_1
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1077
    :try_start_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 1079
    if-nez v0, :cond_0

    .line 1080
    :try_start_3
    const-string v0, "None"
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1088
    :cond_0
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "mailto"

    aget-object v6, v6, v3

    invoke-static {v9, v6, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v5, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1090
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v1, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n\n\n\n\n\n\nApp Version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "OS Version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Account: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->startActivity(Landroid/content/Intent;)V

    .line 1097
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1098
    const-string v1, "settings_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    if-eqz v1, :cond_1

    .line 1101
    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    .line 1102
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->e()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 45
    :cond_1
    :goto_1
    const v0, 0x7f0300db

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1084
    :catch_0
    move-exception v0

    move-object v5, v0

    move v2, v3

    move-object v4, v1

    move-object v0, v1

    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1107
    :catch_1
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;->i:Landroid/content/Context;

    const v4, 0x7f0b00e9

    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1108
    const-string v1, "Need Email Client"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1109
    const-string v1, "You must have an email account enabled to use this feature"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1110
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1111
    const-string v1, "OK"

    new-instance v2, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/FeedbackFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_1

    .line 1119
    new-instance v1, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/settings/FeedbackFragment$2;-><init>(Lcom/cbs/app/view/fragments/settings/FeedbackFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_1

    .line 1084
    :catch_2
    move-exception v0

    move-object v5, v0

    move v2, v3

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :cond_2
    move-object v0, v1

    move v2, v3

    move-object v4, v1

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 53
    return-void
.end method
