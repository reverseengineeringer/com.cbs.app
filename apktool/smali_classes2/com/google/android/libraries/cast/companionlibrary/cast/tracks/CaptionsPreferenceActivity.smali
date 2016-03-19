.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 42
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->a:Ljava/lang/String;

    const-string v1, "Did you forget to enable FEATURE_CAPTIONS_PREFERENCE when you initialized the VideoCastManage?"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-boolean v1, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v1, :cond_1

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_1
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$xml;->caption_preference:I

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method
