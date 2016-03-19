.class public Lcom/cbs/app/view/fragments/settings/DebugFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/app/Activity;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:J

.field private h:I

.field private i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->c:Z

    .line 87
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d:Z

    .line 88
    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->e:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->f:Landroid/app/Dialog;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->g:J

    .line 94
    iput v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->h:I

    .line 98
    new-instance v0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->l:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->h:I

    return p1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1019
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1020
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    :goto_1
    return v0

    .line 1019
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1024
    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;J)J
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "test:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 71
    .line 2028
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2029
    const-string v1, "PREFS_DEBUG_LOCATION_NAME_POSITION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2030
    if-eqz p4, :cond_0

    .line 2031
    const-string v1, "PREFS_DEBUG_LOCATION_CUSTOM_LATITUDE"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2032
    const-string v1, "PREFS_DEBUG_LOCATION_CUSTOM_LONGITUDE"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2034
    :cond_0
    const-string v1, "cbsDebugUserLocationLatitude"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2035
    const-string v1, "cbsDebugUserLocationLongitude"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2036
    const-string v1, "cbsDebugUserLocationTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2037
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2038
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2039
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    if-eqz p4, :cond_1

    .line 2041
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location set: Lat ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), Lon ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :cond_1
    return-void
.end method

.method public static a(ZLandroid/view/View;)V
    .locals 2

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    const v0, 0x7f0f0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1053
    if-eqz p0, :cond_1

    .line 1055
    const-string v1, "MVPD Logout"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    const-string v1, "MVPD Login"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/settings/DebugFragment;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->h:I

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/settings/DebugFragment;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->g:J

    return-wide v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    packed-switch p1, :pswitch_data_0

    .line 1121
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1125
    :goto_0
    :pswitch_0
    return-void

    .line 1067
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1071
    :pswitch_2
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthenticationToken()V

    goto :goto_0

    .line 1077
    :pswitch_3
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 1087
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 1089
    :pswitch_5
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->f()V

    goto :goto_0

    .line 1104
    :pswitch_6
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 1107
    :pswitch_7
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    const-string v0, "mvpd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 1111
    :pswitch_8
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 1065
    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_1
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 1067
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1087
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 1104
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 999
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1000
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    .line 1001
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1003
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f031b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1004
    const-string v2, "webcheckbox"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1006
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 34
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 154
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 155
    const v4, 0x7f0300da

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    .line 156
    if-eqz v29, :cond_6

    .line 159
    const v4, 0x7f0f02eb

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 160
    const v5, 0x7f0f02ec

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 161
    const v6, 0x7f0f02ed

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 162
    const v7, 0x7f0f02ee

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 165
    const v8, 0x7f0f030b

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    .line 167
    const v8, 0x7f0f030a

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 169
    const v8, 0x7f0f02fa

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 170
    const v8, 0x7f0f02fc

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 171
    const v8, 0x7f0f030f

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 172
    const v8, 0x7f0f0303

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    .line 173
    const v8, 0x7f0f02ff

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 174
    const v8, 0x7f0f030d

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    .line 175
    const v8, 0x7f0f0300

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    .line 176
    const v8, 0x7f0f0304

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    .line 177
    const v8, 0x7f0f0301

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 178
    const v8, 0x7f0f00ce

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v25, v8

    check-cast v25, Landroid/widget/SeekBar;

    .line 179
    const v8, 0x7f0f0302

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v26, v8

    check-cast v26, Landroid/widget/SeekBar;

    .line 180
    const v8, 0x7f0f0307

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 181
    const v9, 0x7f0f0308

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 182
    const v21, 0x7f0f0309

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v23, v21

    check-cast v23, Landroid/widget/RadioButton;

    .line 183
    const v21, 0x7f0f0319

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v24, v21

    check-cast v24, Landroid/widget/CheckBox;

    .line 184
    const v21, 0x7f0f031a

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v27, v21

    check-cast v27, Landroid/widget/CheckBox;

    .line 186
    const v21, 0x7f0f0314

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 187
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->l:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 188
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cbs/app/livetv/controllers/MVPDController;->h()V

    .line 190
    new-instance v22, Lcom/cbs/app/view/fragments/settings/DebugFragment$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment$12;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/Button;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v21, 0x7f0f0305

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v28, v21

    check-cast v28, Landroid/widget/TextView;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    move-object/from16 v21, v0

    const-string v22, "use_cc_vod_override"

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v30

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const-string v22, "cc_vod_override"

    const-string v31, "ktvq5uy60wOw7GO6OoOYk2Cdd2YpS_EH"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 215
    const v21, 0x7f0f0311

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    .line 216
    const v22, 0x7f0f0312

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    .line 219
    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 226
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    .line 227
    const-string v32, "flurryCheckBox"

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    new-instance v32, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/DebugFragment$23;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    const-string v24, "kochavaCheckBox"

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    new-instance v24, Lcom/cbs/app/view/fragments/settings/DebugFragment$27;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/DebugFragment$27;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v24

    .line 252
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v27, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$29;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$30;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$31;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->a()I

    move-result v32

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/CapUtil;->a(Landroid/content/Context;)F

    move-result v33

    .line 312
    move/from16 v0, v32

    int-to-float v4, v0

    mul-float v4, v4, v33

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Lcom/cbs/app/view/MainApplication;

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.amazon.venezia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 319
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 327
    :goto_0
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 328
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/cbs/app/view/fragments/settings/DebugFragment$32;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V

    invoke-virtual {v9, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1, v11}, Lcom/cbs/app/view/fragments/settings/DebugFragment$2;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Lcom/cbs/app/view/MainApplication;Landroid/widget/EditText;)V

    invoke-virtual {v8, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/cbs/app/view/fragments/settings/DebugFragment$3;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 364
    const v4, 0x7f0f02f5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 365
    const v4, 0x7f0f02f3

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->j:Landroid/widget/EditText;

    .line 366
    const v4, 0x7f0f02f4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->k:Landroid/widget/EditText;

    .line 367
    const v4, 0x7f0f02f2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Landroid/widget/Spinner;

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const v5, 0x7f0e0015

    const v8, 0x1090008

    invoke-static {v4, v5, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 371
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 373
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 375
    const-string v4, "PREFS_DEBUG_LOCATION_NAME_POSITION"

    const/4 v5, 0x0

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 376
    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 377
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/cbs/app/view/fragments/settings/DebugFragment$4;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/widget/Button;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->j:Landroid/widget/EditText;

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_9

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->k:Landroid/widget/EditText;

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_a

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 399
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->j:Landroid/widget/EditText;

    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$5;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->k:Landroid/widget/EditText;

    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$6;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 452
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    const v4, 0x7f0f02f6

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 461
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const v7, 0x7f0e0014

    const v9, 0x1090008

    invoke-static {v6, v7, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 463
    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 464
    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 465
    const-string v6, "syncbackurl"

    const-string v7, "http://cbsservice.aws.syncbak.com"

    move-object/from16 v0, v30

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 466
    invoke-static {v5, v6}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 467
    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 468
    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v6, v0, v1, v5}, Lcom/cbs/app/view/fragments/settings/DebugFragment$8;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 488
    const v4, 0x7f0f02f8

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const/high16 v5, 0x7f0e0000

    const v6, 0x1090008

    invoke-static {v4, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v24

    .line 492
    const v4, 0x1090009

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 494
    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->o(Landroid/content/Context;)Z

    move-result v4

    .line 496
    if-eqz v4, :cond_1

    .line 497
    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 500
    :cond_1
    const v4, 0x7f0f02fd

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e0019

    const v7, 0x1090008

    invoke-static {v5, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 505
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 507
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 508
    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v12}, Lcom/cbs/app/view/fragments/settings/DebugFragment$9;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/ArrayAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 522
    const v4, 0x7f0f0310

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e000b

    const v7, 0x1090008

    invoke-static {v5, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 527
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 529
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 530
    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v13}, Lcom/cbs/app/view/fragments/settings/DebugFragment$10;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/ArrayAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 543
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "maxBufferTime"

    const/16 v6, 0x3c

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 574
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    sub-double/2addr v4, v6

    const-wide v6, 0x405b800000000000L    # 110.0

    div-double/2addr v4, v6

    .line 577
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 578
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d:Z

    .line 580
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 582
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v14, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 622
    const v4, 0x7f0f02f0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 623
    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$14;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    const v4, 0x7f0f02f1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 630
    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$15;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    const v4, 0x7f0f0315

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 637
    const v5, 0x7f0f0316

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 638
    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/cbs/app/view/fragments/settings/DebugFragment$16;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    const v4, 0x7f0f0317

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 669
    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$17;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    const v4, 0x7f0f0318

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 682
    new-instance v5, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    if-eqz v27, :cond_5

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "cbs_appsecret"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "cbs_base_uri"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "chromecast_id"

    const-string v6, "0BBDC217"

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 723
    if-eqz v15, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "useResponseCache"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 725
    invoke-virtual {v15, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 727
    :cond_2
    if-eqz v16, :cond_3

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "allow_https"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 729
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 731
    :cond_3
    if-eqz v19, :cond_4

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "show_events"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 734
    :cond_4
    if-eqz v20, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "unicornUAT"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 740
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "use_debug_mdialog"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 741
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-string v5, "use_debug_conviva"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 745
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 747
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, v33

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 749
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 750
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v4, v0, v10, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/TextView;I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 769
    const v4, 0x7f0f0313

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 770
    new-instance v9, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v24}, Lcom/cbs/app/view/fragments/settings/DebugFragment$20;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    const v4, 0x7f0f031b

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/CheckBox;

    .line 876
    const v4, 0x7f0f031c

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 877
    const v4, 0x7f0f031d

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/Spinner;

    .line 878
    const v4, 0x7f0f031e

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 879
    const v4, 0x7f0f031f

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 880
    const v4, 0x7f0f0320

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const v5, 0x7f0e000f

    const v13, 0x1090009

    invoke-static {v4, v5, v13}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 884
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 885
    invoke-virtual {v10, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 886
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment$21;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V

    invoke-virtual {v10, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 897
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/cbs/app/view/fragments/settings/DebugFragment$22;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 924
    const-string v4, "webcheckbox"

    const/4 v5, 0x0

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 925
    const v4, 0x7f0f0321

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 926
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v7, v9}, Lcom/cbs/app/view/fragments/settings/DebugFragment$24;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    new-instance v4, Lcom/cbs/app/view/fragments/settings/DebugFragment$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/cbs/app/view/fragments/settings/DebugFragment$25;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 955
    new-instance v4, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    new-instance v6, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v12}, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v4, v6}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v4}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getAllShows()V

    .line 994
    :cond_6
    return-object v29

    .line 320
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.vending"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 322
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 324
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 397
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 398
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 399
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 1012
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1013
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->c()V

    .line 1016
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1048
    return-void
.end method
