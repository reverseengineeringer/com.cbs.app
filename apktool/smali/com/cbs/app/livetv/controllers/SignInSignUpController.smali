.class public Lcom/cbs/app/livetv/controllers/SignInSignUpController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/controllers/SignInSignUpController$7;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V
    .locals 2

    .prologue
    .line 42
    .line 5234
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c:Z

    if-nez v0, :cond_0

    .line 5235
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 5236
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    if-eqz v0, :cond_0

    .line 5237
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 42
    .line 4115
    new-instance v8, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;Lcom/cbs/app/livetv/model/Person;)V

    .line 4157
    new-instance v3, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v3}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 4158
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    iget-object v4, v4, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 4159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    .line 5163
    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 5165
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/apps-api/v3.0/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/useraccount/registration.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5167
    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/livetv/model/Person;->getEndpointPostMap()Ljava/util/HashMap;

    move-result-object v7

    const-class v9, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    invoke-virtual/range {v3 .. v9}, Lcom/cbs/app/service/AuthServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 4159
    :goto_0
    return-void

    .line 4161
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    .line 5212
    invoke-static {v10}, Lcom/cbs/app/view/utils/Util;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 5214
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/apps-api/v3.0/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/social/registration.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5216
    const-string v11, "v3.0"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/livetv/model/Person;->getEndpointPostMapSocial()Ljava/util/HashMap;

    move-result-object v14

    const-class v16, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    move-object v9, v3

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/cbs/app/service/AuthServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    .line 5243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callLoginStatus() called with: checkTOU = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], title = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], sku = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5244
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 5245
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V

    .line 5301
    new-instance v1, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 5302
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    .line 61
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 206
    .line 208
    packed-switch p1, :pswitch_data_0

    :cond_0
    move-object v4, v1

    .line 228
    :goto_0
    if-eqz v4, :cond_1

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reconcileProviderToken provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    new-instance v5, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;

    invoke-direct {v5, p0, v4}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/SocialProvider;)V

    .line 3349
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 3350
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 231
    :cond_1
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_0

    .line 212
    new-instance v0, Lcom/cbs/app/livetv/model/SocialProvider;

    sget-object v3, Lcom/cbs/app/livetv/model/SocialNames;->a:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-direct {v0, v3, v2, v1}, Lcom/cbs/app/livetv/model/SocialProvider;-><init>(Lcom/cbs/app/livetv/model/SocialNames;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_0

    .line 218
    new-instance v0, Lcom/cbs/app/livetv/model/SocialProvider;

    sget-object v3, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-direct {v0, v3, v2, v1}, Lcom/cbs/app/livetv/model/SocialProvider;-><init>(Lcom/cbs/app/livetv/model/SocialNames;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->D(Landroid/content/Context;)Lcom/cbs/app/service/social/TwitterOAuthTokens;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_0

    .line 224
    new-instance v0, Lcom/cbs/app/livetv/model/SocialProvider;

    sget-object v1, Lcom/cbs/app/livetv/model/SocialNames;->c:Lcom/cbs/app/livetv/model/SocialNames;

    iget-object v3, v2, Lcom/cbs/app/service/social/TwitterOAuthTokens;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/cbs/app/livetv/model/SocialProvider;-><init>(Lcom/cbs/app/livetv/model/SocialNames;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    .line 1086
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V

    .line 1106
    new-instance v1, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 1107
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    iget-object v3, p1, Lcom/cbs/app/livetv/model/Person;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/cbs/app/livetv/model/Person;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cbs/app/service/AuthService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1109
    new-instance v0, Lcom/cbs/app/livetv/model/Person;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/Person;-><init>()V

    .line 1110
    const-string v1, "Patrick"

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final a(Lcom/cbs/app/livetv/model/SocialNames;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$7;->a:[I

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/SocialNames;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 1355
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    const-class v2, Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1356
    const/16 v1, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1367
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    const-class v2, Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1368
    const/16 v1, 0x12e

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2361
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    const-class v2, Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2362
    const/16 v1, 0x12d

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 373
    invoke-virtual {p2}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 378
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2, p3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    const/16 v2, 0x3ec

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v0, "Our Terms Have Changed"

    .line 3401
    invoke-virtual {p2}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3402
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3404
    new-instance v6, Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-direct {v6}, Lcom/cbs/app/view/fragments/TOUDialogFragment;-><init>()V

    .line 3405
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3406
    const-string v4, "dialog_title"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v6, v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3408
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/TOUDialogFragment;)V

    invoke-virtual {v6, v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->setListner(Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;)V

    .line 3445
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "TOUDialog"

    invoke-virtual {v6, v0, v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/cbs/app/analytics/Action;->bl:Lcom/cbs/app/analytics/Action;

    .line 390
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 391
    const-string v2, "events"

    const-string v3, "event8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final b(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "singIn() called with: person = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], sku = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;

    invoke-direct {v0, p0, p2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 202
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b:Landroid/content/Context;

    iget-object v3, p1, Lcom/cbs/app/livetv/model/Person;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/cbs/app/livetv/model/Person;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 203
    return-void
.end method

.method public setSignInSignUpCallback(Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->e:Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    .line 65
    return-void
.end method
