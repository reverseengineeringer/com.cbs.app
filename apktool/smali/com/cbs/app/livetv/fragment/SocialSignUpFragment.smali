.class public Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:Lcom/cbs/app/view/model/MVPDConfig;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Landroid/support/design/widget/TextInputLayout;

.field private f:Landroid/support/design/widget/TextInputLayout;

.field private g:Landroid/support/design/widget/TextInputLayout;

.field private h:Landroid/support/design/widget/TextInputLayout;

.field private i:Landroid/support/design/widget/TextInputLayout;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/ScrollView;

.field private l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private m:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

.field private n:Lcom/cbs/app/livetv/model/Person;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Lcom/cbs/app/view/BackButtonListener;

.field private r:Landroid/widget/Spinner;

.field private s:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    const/4 v0, 0x6

    iput v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->b:I

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->d:Ljava/text/SimpleDateFormat;

    .line 92
    new-instance v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->q:Lcom/cbs/app/view/BackButtonListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    new-instance v1, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;-><init>()V

    .line 115
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    .line 2420
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/livetv/activity/LiveTvWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2421
    sget-object v1, Lcom/cbs/app/livetv/activity/LiveTvWebActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2422
    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    .line 3428
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3429
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3430
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080197

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3431
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3399
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3400
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/model/Person;->setBirthDay(Ljava/util/Date;)V

    .line 3401
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->h:Ljava/lang/String;

    .line 3402
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/livetv/model/Person;->f:Ljava/lang/String;

    .line 3403
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->m:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V

    .line 3406
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3407
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3408
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    const-string v0, "evar_10"

    const-string v2, "cbsreg_update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dy:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 3434
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->a:Ljava/lang/String;

    .line 3437
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3438
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3439
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080198

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3440
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3441
    goto/16 :goto_0

    .line 3443
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->b:Ljava/lang/String;

    .line 3446
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3447
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3448
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080194

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3449
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3450
    goto/16 :goto_0

    .line 3453
    :cond_4
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3454
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3455
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080195

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3456
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3457
    goto/16 :goto_0

    .line 3460
    :cond_5
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3461
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3462
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f080196

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3463
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3464
    goto/16 :goto_0

    .line 3466
    :cond_6
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->c:Ljava/lang/String;

    .line 3469
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 3470
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->o:Landroid/widget/EditText;

    const-string v2, "Select a date"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 3471
    goto/16 :goto_0

    .line 3474
    :cond_7
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_8

    .line 3475
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Select a gender"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 3476
    goto/16 :goto_0

    .line 3479
    :cond_8
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_9

    .line 3480
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Select a state"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 3481
    goto/16 :goto_0

    .line 3484
    :cond_9
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3485
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 3486
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f08019c

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3487
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    move v0, v1

    .line 3488
    goto/16 :goto_0

    .line 3490
    :cond_a
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cbs/app/livetv/model/Person;->d:Ljava/lang/String;

    .line 3493
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3494
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080193

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    move v0, v1

    .line 3495
    goto/16 :goto_0

    .line 3410
    :cond_b
    const-string v0, ""

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->d:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V
    .locals 3

    .prologue
    .line 69
    .line 1527
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1528
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 69
    return-void
.end method

.method static synthetic m(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    .line 4384
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 4385
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 4386
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 4390
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4391
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4392
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    const-string v0, "evar_10"

    const-string v2, "cbsreg_update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4395
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dz:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 69
    return-void

    .line 4394
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 508
    :sswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 513
    :sswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :sswitch_2
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :sswitch_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080192

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_0
        0x7d4 -> :sswitch_1
        0x7da -> :sswitch_2
        0x7db -> :sswitch_3
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v0, "pageTitle"

    const-string v2, "live-tv|cbsreg|update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "evar_6"

    const-string v2, "liveTV|cbsreg|update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "evar_10"

    const-string v2, "cbsreg_update"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dx:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 140
    return-void

    .line 138
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Live TV"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->m:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->m:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->setSignInSignUpCallback(Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;)V

    .line 147
    const v0, 0x7f030090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->m:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a()V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f2

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->q:Lcom/cbs/app/view/BackButtonListener;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0801e2

    const v5, 0x1090009

    const v4, 0x1090008

    const/16 v7, 0x21

    const v6, 0x7f080066

    .line 162
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1416
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->q:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 164
    new-instance v0, Lcom/cbs/app/livetv/model/Person;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/Person;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    .line 165
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, v1, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    const-string v2, "provider_token"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, v1, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    const-string v2, "provider_secret"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    .line 169
    const-string v1, "provider_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->n:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, v1, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-static {}, Lcom/cbs/app/livetv/model/SocialNames;->values()[Lcom/cbs/app/livetv/model/SocialNames;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, v1, Lcom/cbs/app/livetv/model/SocialProvider;->a:Lcom/cbs/app/livetv/model/SocialNames;

    .line 172
    :cond_0
    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->k:Landroid/widget/ScrollView;

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 174
    const v0, 0x7f0f035d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->o:Landroid/widget/EditText;

    .line 176
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->o:Landroid/widget/EditText;

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f0f0355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    .line 198
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$9;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$9;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    const v0, 0x7f0f0358

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    .line 214
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    const v0, 0x7f0f024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    .line 231
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->g:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$11;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$11;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    const v0, 0x7f0f035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$12;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$12;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->h:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 275
    const v0, 0x7f0f0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    .line 276
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->i:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$14;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$14;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    const v0, 0x7f0f035e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    .line 294
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0e0013

    invoke-static {v0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 296
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->r:Landroid/widget/Spinner;

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$15;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$15;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 314
    const v0, 0x7f0f0361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->p:Landroid/widget/EditText;

    .line 316
    const v0, 0x7f0f035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    .line 317
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0e001d

    invoke-static {v0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 319
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 320
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->s:Landroid/widget/Spinner;

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 337
    const v0, 0x7f0f0258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080258

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 340
    const v4, 0x7f080258

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 342
    new-instance v5, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;

    invoke-direct {v5, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v2, v5, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 349
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 350
    invoke-virtual {p0, v8}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 351
    new-instance v5, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$4;

    invoke-direct {v5, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v2, v5, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 358
    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080288

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 359
    const v4, 0x7f080288

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 360
    new-instance v5, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$5;

    invoke-direct {v5, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v2, v5, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 366
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 367
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const v0, 0x7f0f0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->j:Landroid/widget/CheckBox;

    .line 369
    const v0, 0x7f0f0259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f0f0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    return-void
.end method

.method public setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->l:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 121
    return-void
.end method
