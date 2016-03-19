.class public Lcom/cbs/app/view/fragments/settings/SettingsFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$OnLogOutSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field h:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private k:I

.field private l:Landroid/view/View;

.field private m:Z

.field private final n:Lcom/cbs/app/view/BackButtonListener;

.field private o:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->i:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->h:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 51
    iput v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    .line 53
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    .line 55
    new-instance v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    .line 100
    new-instance v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$3;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->o:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->setRetainInstance(Z)V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/SettingsFragment;Z)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 39
    .line 3153
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3154
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3155
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3156
    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3157
    const-string v4, "https://cbsi.secure.force.com/CBSi/knowledgehome?referer=cbsmobfeedback.com&data="

    .line 3159
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3160
    iget-object v5, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v5, :cond_1

    .line 3161
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "CBS Account"

    const-string v8, "settingsaccount_fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/AccountFragment;

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    if-eqz p1, :cond_0

    .line 3163
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v5

    .line 3164
    sget-object v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v7, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const v8, 0x7f0801a5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "settingsdisconnectprovider_fragment"

    const-class v9, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    const-string v10, ""

    invoke-direct {v7, v5, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    :cond_0
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "App Version"

    const-string v8, "settingsappversion_fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3169
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "Rate This App"

    const-string v8, "settingsrate_fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/RateFragment;

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "Send Feedback"

    const-string v8, "settingsfeedback_fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/FeedbackFragment;

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "Push Notifications"

    const-string v8, "settingspush fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/PushNotificationsSettingsFragment;

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    sget-object v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v7, "FAQ"

    const-string v8, "faq_fragment"

    const-class v9, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3173
    sget-object v4, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v5, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v6, "Terms of Use"

    const-string v7, "settingsterms_fragment"

    const-class v8, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    sget-object v2, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v4, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v5, "Privacy Policy"

    const-string v6, "settingsprivacy_fragment"

    const-class v7, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
    sget-object v2, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v4, "Mobile User Agreement"

    const-string v5, "mobile_user_agreement_fragment"

    const-class v6, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v3, "Video Services"

    const-string v4, "video_service_fragment"

    const-class v5, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3177
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v2, "Closed Captions"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v11, v11}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3179
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    const-string v2, "Nielsen Info & Your Choices"

    const-string v3, "nielsen_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->e()V

    .line 39
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 353
    new-instance v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$4;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_2

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    .line 279
    :goto_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 280
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    :cond_1
    :goto_1
    return-void

    .line 276
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    goto :goto_0

    .line 286
    :cond_3
    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_4

    .line 287
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 289
    :cond_4
    const v1, 0x7f0f02e3

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->b(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->c(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 330
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "settingsmenu_fragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "settingsaccount_fragment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 335
    :cond_0
    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 337
    const-string v0, "pageUrl"

    invoke-virtual {v2, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;-><init>()V

    .line 339
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 343
    :goto_0
    invoke-virtual {v1, p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 344
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 347
    :cond_1
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()V
    .locals 7

    .prologue
    const v6, 0x7f0f02e3

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k:I

    .line 260
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    const v1, 0x7f0f02e4

    const-string v2, "settingsmenu_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/MenuFragment;

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    .line 264
    const-string v2, "settingsaccount_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/AccountFragment;

    const-string v5, ""

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v2, "settingsmenu_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/MenuFragment;

    const-string v5, ""

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    sparse-switch p1, :sswitch_data_0

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/cbs/app/view/AbstractAsyncFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 302
    :sswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "settingsdisconnectprovider_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 310
    :sswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "settingsdebug_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f42 -> :sswitch_0
        0x2329 -> :sswitch_1
        0x232a -> :sswitch_1
        0x232b -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 148
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->o:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 149
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->h()V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->h:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    .line 199
    const v0, 0x7f0300d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->l:Landroid/view/View;

    .line 1243
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1245
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 209
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 1251
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1253
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 224
    sget-object v0, Lcom/cbs/app/analytics/Action;->p:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 225
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m:Z

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 2214
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2215
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_0

    .line 2216
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2217
    const-wide/16 v2, -0x1

    const-string v1, "settings_fragment"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method
