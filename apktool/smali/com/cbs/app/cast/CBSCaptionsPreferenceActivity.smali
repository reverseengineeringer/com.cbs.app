.class public Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const v0, 0x7f0b0185

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->setTheme(I)V

    .line 28
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 35
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->finish()V

    .line 49
    :goto_0
    return-void

    .line 39
    :cond_1
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->finish()V

    goto :goto_0

    .line 45
    :cond_2
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 47
    new-instance v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setUpPreferences(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method
