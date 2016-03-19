.class public Lcom/cbs/app/livetv/fragment/SignInFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

.field private c:Lcom/cbs/app/livetv/model/Person;

.field private d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private e:Landroid/support/design/widget/TextInputLayout;

.field private f:Landroid/support/design/widget/TextInputLayout;

.field private g:Landroid/widget/ScrollView;

.field private h:Ljava/lang/Boolean;

.field private i:Lcom/cbs/app/view/model/MVPDConfig;

.field private j:Landroid/widget/Button;

.field private k:Lcom/cbs/app/view/BackButtonListener;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/SignInFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Lcom/cbs/app/livetv/fragment/SignInFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->k:Lcom/cbs/app/view/BackButtonListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SignInFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;ZLjava/lang/String;Z)Lcom/cbs/app/livetv/fragment/SignInFragment;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/SignInFragment;-><init>()V

    .line 103
    const-string v2, "mvpd"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v2, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v2, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string v2, "ARG_SKU"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/cbs/app/livetv/fragment/SignInFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SignInFragment;Lcom/cbs/app/livetv/model/SocialNames;)V
    .locals 3

    .prologue
    .line 57
    .line 2327
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->h:Ljava/lang/Boolean;

    .line 2328
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p1, p0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/model/SocialNames;Landroid/support/v4/app/Fragment;)V

    .line 2330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2331
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dm:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 57
    return-void

    .line 2334
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    .line 3307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->h:Ljava/lang/Boolean;

    .line 3361
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3362
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3363
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080194

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3364
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->g:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3308
    :goto_0
    if-eqz v0, :cond_3

    .line 3309
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->c:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->c:Ljava/lang/String;

    .line 3310
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->c:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->g:Ljava/lang/String;

    .line 3311
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 3312
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->c:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V

    .line 3317
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3318
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3321
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3323
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dm:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 57
    return-void

    .line 3368
    :cond_0
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3369
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3370
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080195

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3371
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->g:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 3375
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3376
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3377
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080199

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3378
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->g:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 3381
    goto/16 :goto_0

    .line 3314
    :cond_3
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->b()V

    goto/16 :goto_1

    .line 3321
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 3

    .prologue
    .line 57
    .line 4293
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f4

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 4297
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4298
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4299
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4300
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4301
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->do:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 57
    return-void

    .line 4301
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 3

    .prologue
    .line 57
    .line 5279
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 5280
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 5283
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5284
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5285
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5286
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5287
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5289
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dn:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 57
    return-void

    .line 5287
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 3

    .prologue
    .line 57
    .line 6272
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 6273
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;)V

    .line 6274
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 392
    :sswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 393
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dp:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 401
    :sswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ee

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->h:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 405
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 396
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 408
    :sswitch_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ef

    invoke-interface {v0, v1, p2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 413
    :sswitch_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->b()V

    goto :goto_0

    .line 417
    :sswitch_4
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080190

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->b()V

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_2
        0x3f1 -> :sswitch_1
        0x7d3 -> :sswitch_3
        0x7d9 -> :sswitch_4
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 120
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(I)V

    .line 342
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 266
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 267
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    .line 126
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 127
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->m:Z

    .line 128
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->l:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v1, "pageTitle"

    const-string v2, "live-tv|cbsreg|sign in"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "evar_6"

    const-string v2, "liveTV|cbsreg|sign in"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "evar_10"

    const-string v2, "cbsreg_signin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->dl:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Live Tv"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->setSignInSignUpCallback(Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;)V

    .line 147
    new-instance v0, Lcom/cbs/app/livetv/model/Person;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/Person;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->c:Lcom/cbs/app/livetv/model/Person;

    .line 148
    const v0, 0x7f03008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a()V

    .line 347
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f2

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->k:Lcom/cbs/app/view/BackButtonListener;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 351
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 352
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0f0255

    .line 153
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1356
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->k:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 155
    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->g:Landroid/widget/ScrollView;

    .line 156
    const v0, 0x7f0f024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    .line 157
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    const v0, 0x7f0f0251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    .line 174
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    const v0, 0x7f0f024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$6;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f0f024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v0, 0x7f0f024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$8;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0f0254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->j:Landroid/widget/Button;

    .line 211
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->j:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$9;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$9;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08011b

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 225
    const v3, 0x7f080223

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 226
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$10;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$10;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f0f0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->n:Landroid/view/View;

    .line 237
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->m:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->n:Landroid/view/View;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$11;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$11;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :goto_0
    const v0, 0x7f0f0253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignInFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 114
    return-void
.end method
