.class public Lcom/cbs/app/livetv/fragment/SignUpFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field public a:Lcom/cbs/app/view/model/MVPDConfig;

.field private final c:I

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Landroid/support/design/widget/TextInputLayout;

.field private f:Landroid/support/design/widget/TextInputLayout;

.field private g:Landroid/support/design/widget/TextInputLayout;

.field private h:Landroid/support/design/widget/TextInputLayout;

.field private i:Landroid/support/design/widget/TextInputLayout;

.field private j:Landroid/support/design/widget/TextInputLayout;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/support/design/widget/TextInputLayout;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/ScrollView;

.field private o:Lcom/cbs/app/livetv/model/Person;

.field private p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

.field private q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Lcom/cbs/app/view/BackButtonListener;

.field private u:Ljava/util/Calendar;

.field private v:Landroid/widget/Spinner;

.field private w:Landroid/widget/Spinner;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->c:I

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->d:Ljava/text/SimpleDateFormat;

    .line 97
    new-instance v0, Lcom/cbs/app/livetv/fragment/SignUpFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->t:Lcom/cbs/app/view/BackButtonListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;ZLjava/lang/String;Z)Lcom/cbs/app/livetv/fragment/SignUpFragment;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;-><init>()V

    .line 134
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SignUpFragment;Lcom/cbs/app/livetv/model/SocialNames;)V
    .locals 3

    .prologue
    .line 69
    .line 2528
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p1, p0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/model/SocialNames;Landroid/support/v4/app/Fragment;)V

    .line 2530
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2531
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signup"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->du:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 2534
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SignUpFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    .line 3580
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/livetv/activity/LiveTvWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3581
    sget-object v1, Lcom/cbs/app/livetv/activity/LiveTvWebActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3582
    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->u:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->d:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 3

    .prologue
    .line 69
    .line 3490
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3491
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    return-void
.end method

.method static synthetic m(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic o(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 3

    .prologue
    .line 69
    .line 3495
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3496
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 69
    return-void
.end method

.method static synthetic q(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    .line 4587
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4588
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4589
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080197

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4590
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4540
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4541
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->u:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/model/Person;->setBirthDay(Ljava/util/Date;)V

    .line 4542
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->h:Ljava/lang/String;

    .line 4543
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->f:Ljava/lang/String;

    .line 4544
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V

    .line 4547
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4548
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4550
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signup"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4551
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4553
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->du:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 4593
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->a:Ljava/lang/String;

    .line 4596
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4597
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4598
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080198

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4599
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4600
    goto/16 :goto_0

    .line 4602
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->b:Ljava/lang/String;

    .line 4605
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4606
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4607
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080194

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4608
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4609
    goto/16 :goto_0

    .line 4612
    :cond_4
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4613
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4614
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080195

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4615
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4616
    goto/16 :goto_0

    .line 4619
    :cond_5
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4620
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4621
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080196

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4622
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4623
    goto/16 :goto_0

    .line 4625
    :cond_6
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->c:Ljava/lang/String;

    .line 4628
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4629
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4630
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080199

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4631
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4632
    goto/16 :goto_0

    .line 4633
    :cond_7
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_8

    .line 4634
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4635
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f08019a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4636
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4637
    goto/16 :goto_0

    .line 4640
    :cond_8
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4641
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4642
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f08019b

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4643
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4644
    goto/16 :goto_0

    .line 4646
    :cond_9
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->g:Ljava/lang/String;

    .line 4649
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_a

    .line 4650
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->k:Landroid/widget/EditText;

    const-string v2, "Select a date"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4651
    goto/16 :goto_0

    .line 4654
    :cond_a
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_b

    .line 4655
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Select a gender"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4656
    goto/16 :goto_0

    .line 4659
    :cond_b
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_c

    .line 4660
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Select a state"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4661
    goto/16 :goto_0

    .line 4664
    :cond_c
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4665
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 4666
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f08019c

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4667
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 4668
    goto/16 :goto_0

    .line 4670
    :cond_d
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->d:Ljava/lang/String;

    .line 4673
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4674
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080193

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    move v0, v1

    .line 4675
    goto/16 :goto_0

    .line 4551
    :cond_e
    const-string v0, ""

    goto/16 :goto_1
.end method

.method static synthetic r(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 3

    .prologue
    .line 69
    .line 5500
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 5501
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f3

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 5504
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5505
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5506
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5507
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signup"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5508
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5510
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->ds:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 5508
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic s(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 3

    .prologue
    .line 69
    .line 5514
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 5515
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ef

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 5518
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5519
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5520
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5521
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signup"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5522
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5524
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dt:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 5522
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x3ef

    .line 682
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 687
    :sswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 692
    :sswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 697
    :sswitch_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    invoke-interface {v0, v1, p2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 702
    :sswitch_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :sswitch_4
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :sswitch_5
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080192

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_2
        0x3f1 -> :sswitch_1
        0x7d4 -> :sswitch_3
        0x7da -> :sswitch_4
        0x7db -> :sswitch_5
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(I)V

    .line 561
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 479
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 483
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 484
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 485
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 487
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    .line 152
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->x:Z

    .line 153
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->z:Z

    .line 154
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->y:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate: fromUpsellTrial = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string v0, "pageTitle"

    const-string v2, "live-tv|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|sign up"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "evar_10"

    const-string v2, "cbsreg_signup"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dr:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 166
    return-void

    .line 163
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lcom/cbs/app/livetv/model/Person;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/Person;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    .line 172
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "liveTv"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    .line 173
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->setSignInSignUpCallback(Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;)V

    .line 174
    const v0, 0x7f03008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->p:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a()V

    .line 567
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f2

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->t:Lcom/cbs/app/view/BackButtonListener;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 570
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 571
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 572
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0801e2

    const v3, 0x1090009

    const v2, 0x1090008

    const v6, 0x7f080066

    const/16 v5, 0x21

    .line 179
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1576
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->t:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 181
    new-instance v0, Lcom/cbs/app/livetv/model/Person;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/Person;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->o:Lcom/cbs/app/livetv/model/Person;

    .line 182
    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->n:Landroid/widget/ScrollView;

    .line 184
    const v0, 0x7f0f024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$12;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$12;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f0f024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$15;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$15;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f0f024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$16;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$16;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->u:Ljava/util/Calendar;

    .line 203
    const v0, 0x7f0f035d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->k:Landroid/widget/EditText;

    .line 204
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v0, 0x7f0f0355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    .line 232
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$18;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$18;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    const v0, 0x7f0f0358

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$19;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$19;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    const v0, 0x7f0f024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    .line 265
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$20;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$20;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    const v0, 0x7f0f035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    .line 282
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$21;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$21;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    const v0, 0x7f0f0251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    .line 299
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    const v0, 0x7f0f035c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    .line 316
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->j:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    const v0, 0x7f0f035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->s:Landroid/widget/EditText;

    .line 333
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    const v0, 0x7f0f0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    .line 345
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    const v0, 0x7f0f035e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    .line 364
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 366
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 367
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->v:Landroid/widget/Spinner;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 384
    const v0, 0x7f0f0361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->r:Landroid/widget/EditText;

    .line 386
    const v0, 0x7f0f035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    .line 387
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e001d

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 388
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 389
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 390
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->w:Landroid/widget/Spinner;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 407
    const v0, 0x7f0f0258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 408
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080258

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 410
    const v3, 0x7f080258

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 412
    new-instance v4, Lcom/cbs/app/livetv/fragment/SignUpFragment$8;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 419
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 420
    invoke-virtual {p0, v7}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 421
    new-instance v4, Lcom/cbs/app/livetv/fragment/SignUpFragment$9;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$9;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 428
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080288

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 429
    const v3, 0x7f080288

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 430
    new-instance v4, Lcom/cbs/app/livetv/fragment/SignUpFragment$10;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$10;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 436
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const v0, 0x7f0f01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$11;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$11;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v0, 0x7f0f0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->m:Landroid/widget/CheckBox;

    .line 446
    const v0, 0x7f0f01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 449
    const v3, 0x7f08021b

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 450
    new-instance v3, Lcom/cbs/app/livetv/fragment/SignUpFragment$13;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$13;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 456
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const v0, 0x7f0f0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->A:Landroid/view/View;

    .line 461
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->z:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->A:Landroid/view/View;

    new-instance v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$14;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment$14;-><init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment;->q:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 140
    return-void
.end method
