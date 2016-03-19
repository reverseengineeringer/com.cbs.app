.class public final Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;,
        Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field private static final c:Ljava/lang/String;

.field private static d:Landroid/app/Dialog;

.field private static e:Landroid/app/Dialog;

.field private static f:Landroid/app/AlertDialog;

.field private static g:Landroid/app/AlertDialog;

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Landroid/view/View;

.field private static p:Landroid/widget/Button;

.field private static q:Lcom/cbs/app/view/model/VideoData;

.field private static r:Landroid/support/design/widget/TextInputLayout;

.field private static s:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c:Ljava/lang/String;

    .line 132
    sput-boolean v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 134
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    .line 136
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    .line 137
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    .line 139
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g:Landroid/app/AlertDialog;

    .line 141
    sput-boolean v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h:Z

    .line 144
    sput-boolean v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z

    .line 145
    sput-boolean v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j:Z

    .line 146
    const-string v0, "Settings"

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    .line 149
    const-string v0, ""

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->m:Ljava/lang/String;

    .line 150
    const-string v0, ""

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->n:Ljava/lang/String;

    .line 151
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    .line 152
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    .line 153
    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q:Lcom/cbs/app/view/model/VideoData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 119
    sput-object p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static a(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    invoke-virtual {p0}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->getErrors()Ljava/util/HashMap;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_5

    .line 1182
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1186
    const-string v3, "TOOYOUNG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1188
    const-string v0, "We are sorry, but we are unable to create an account for you at this time. "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    :goto_1
    return-object v0

    .line 1191
    :cond_0
    const-string v3, "CONNECTIONFAILURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1193
    const-string v0, "lost server connection, please try again "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1197
    :cond_1
    const-string v3, "firstName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1198
    const-string v1, "First name"

    .line 1203
    :cond_2
    :goto_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    move v0, v3

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1205
    :pswitch_0
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is required. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1199
    :cond_4
    const-string v3, "lastName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1200
    const-string v1, "Last name"

    goto :goto_2

    .line 1203
    :sswitch_0
    const-string v6, "REQUIRED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :sswitch_1
    const-string v6, "EMAILALREADYEXISTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const-string v6, "INVALID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    .line 1208
    :pswitch_1
    const-string v0, "Email already exists. "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1211
    :pswitch_2
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isn\'t valid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1217
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1203
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60648229 -> :sswitch_2
        -0x5121af68 -> :sswitch_1
        0x17371b9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 970
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 972
    check-cast v0, Landroid/widget/TextView;

    .line 973
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 976
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 977
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 980
    :cond_0
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 981
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 982
    check-cast v0, Landroid/widget/TextView;

    .line 983
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 986
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 987
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 990
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 268
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 269
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 274
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f0b00e9

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$1;

    invoke-direct {v3, v0, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;)V

    .line 286
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f030049

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v4, "Sign Into CBS"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v4, "Submit"

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v4, "Cancel"

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    .line 294
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;

    invoke-direct {v1, v0, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;)V

    .line 309
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;

    invoke-direct {v2, v0, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;)V

    .line 322
    sget-object v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 323
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 325
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)V

    .line 348
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;

    invoke-direct {v2, v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View$OnClickListener;)V

    .line 361
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 362
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2320
    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    .line 2321
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2322
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2323
    const v1, 0x7f03010d

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2324
    if-eqz v1, :cond_a

    .line 2325
    const v0, 0x7f0f03c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    .line 2326
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->r:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$30;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$30;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2341
    const v0, 0x7f0f03c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    .line 2342
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->s:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$31;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$31;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2357
    const v0, 0x7f0f015c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2358
    check-cast v0, Landroid/widget/EditText;

    .line 2359
    const-string v2, "password field"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2360
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2361
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->getPasswordCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2362
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->getPasswordCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2364
    :cond_0
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$32;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$32;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2379
    const v0, 0x7f0f0159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2380
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->getEmailCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2381
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->getEmailCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2383
    :cond_1
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$33;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2399
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5544
    if-eqz v1, :cond_9

    .line 5545
    const v0, 0x7f0f00d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5546
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 5547
    check-cast v0, Landroid/widget/TextView;

    .line 5548
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5549
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sign in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5550
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5552
    :cond_2
    const v0, 0x7f0f00c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5553
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 5554
    check-cast v0, Landroid/widget/TextView;

    .line 5555
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5556
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sign in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5557
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5559
    :cond_3
    const v0, 0x7f0f0329

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 5560
    if-eqz v0, :cond_4

    .line 5561
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$36;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$36;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5569
    :cond_4
    const v0, 0x7f0f015d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5570
    if-eqz v0, :cond_5

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 5571
    check-cast v0, Landroid/widget/TextView;

    .line 5572
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;

    invoke-direct {v2, v0, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;-><init>(Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5583
    :cond_5
    const v0, 0x7f0f00e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 5584
    if-eqz v0, :cond_6

    .line 5585
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$38;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$38;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5593
    :cond_6
    const v0, 0x7f0f0363

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 5594
    if-eqz v0, :cond_7

    .line 5595
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5596
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5597
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$39;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$39;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5609
    :cond_7
    :goto_0
    const v0, 0x7f0f0161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5610
    if-eqz v0, :cond_8

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 5611
    check-cast v0, Landroid/widget/TextView;

    .line 5612
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$40;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$40;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5631
    :cond_8
    const v0, 0x7f0f015e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5632
    if-eqz v0, :cond_9

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_9

    .line 5633
    check-cast v0, Landroid/widget/Button;

    .line 5634
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;

    invoke-direct {v2, v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2402
    :cond_9
    sget-object v0, Lcom/cbs/app/analytics/Action;->bj:Lcom/cbs/app/analytics/Action;

    .line 2404
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2405
    const-string v2, "events"

    const-string v3, "event22"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    const-string v2, "From"

    sget-object v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 2412
    :cond_a
    return-void

    .line 5605
    :cond_b
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2530
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z

    .line 2531
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 2532
    invoke-interface {v0, p0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;)V

    .line 2533
    invoke-static {p0, v1, p1, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 2535
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 2536
    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    .line 2537
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->a()V

    .line 2539
    :cond_0
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l(Landroid/content/Context;)V

    .line 2540
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1600
    if-eqz p0, :cond_1

    .line 1601
    const-string v0, "ANONYMOUS"

    .line 1602
    if-eqz p1, :cond_0

    .line 1603
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 1604
    if-eqz v1, :cond_0

    .line 1605
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 1608
    :cond_0
    new-instance v1, Lcom/cbs/app/service/HomeServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/HomeServiceImpl;-><init>()V

    .line 1609
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;

    invoke-direct {v2, p0, p2, p3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;-><init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    invoke-interface {v1, p0, v0, v2}, Lcom/cbs/app/service/HomeService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1611
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1574
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logUserIn() called with: ctx = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], res = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], frm = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], list = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], launch_title = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], sku = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-static {}, Lcom/cbs/app/androiddata/MemoryCache;->a()V

    .line 4696
    invoke-static {p1}, Lcom/cbs/app/manager/AuthStatusManager;->setUserAuthStatus(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)V

    .line 4697
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v0

    .line 4698
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 4699
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 4700
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "userId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " firstName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4701
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CBS_COM"

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4702
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "livefyre_token"

    invoke-static {p0, v5, v6}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4703
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 4704
    invoke-static {p0, v4}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 4705
    invoke-static {p0, v5}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 4706
    invoke-static {p0, v2}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 4707
    invoke-static {p0, v3}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 1584
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 4713
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserType()I

    move-result v1

    .line 4714
    packed-switch v1, :pswitch_data_0

    .line 4728
    const-string v0, ""

    .line 4732
    :goto_0
    sget-object v2, Lcom/cbs/app/analytics/Action;->bp:Lcom/cbs/app/analytics/Action;

    .line 4733
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4734
    const-string v4, "events"

    const-string v5, "event28"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4735
    const-string v4, "appState"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4736
    const-string v4, "From"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4737
    const-string v4, "userStatusStr"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4738
    invoke-static {p0, v2, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 4740
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4741
    sget-object v0, Lcom/cbs/app/analytics/Action;->bG:Lcom/cbs/app/analytics/Action;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->d(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 4746
    :cond_0
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 4747
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1587
    invoke-static {p0, p1, p3, p5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 1588
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l(Landroid/content/Context;)V

    .line 1591
    return-void

    .line 4716
    :pswitch_0
    const-string v0, "registered"

    goto :goto_0

    .line 4719
    :pswitch_1
    const-string v0, "subscriber"

    goto :goto_0

    .line 4722
    :pswitch_2
    const-string v0, "suspended"

    goto :goto_0

    .line 4725
    :pswitch_3
    const-string v0, "exsubscriber"

    goto :goto_0

    .line 4714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/CreateEndpointResponse;Lcom/cbs/app/livetv/model/SocialProvider;)V
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p2, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1154
    invoke-static {p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :goto_0
    return-void

    .line 1158
    :cond_0
    invoke-static {p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 373
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 374
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$44;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$44;-><init>(Landroid/content/Context;)V

    .line 387
    new-instance v2, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$45;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$45;-><init>(Landroid/content/Context;)V

    .line 395
    new-instance v3, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v3}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 396
    new-instance v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 420
    invoke-interface {v3, p0, p1, v4}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 421
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1543
    invoke-virtual {p2}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v0

    .line 1544
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1548
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1550
    invoke-virtual {p2}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getPackageInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 1551
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/registration/PackageInfo;

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/PackageInfo;->getPackageStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_0
    invoke-static {p0, p2, p1, p3, p4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 1569
    :goto_0
    return-void

    .line 1561
    :cond_1
    const-string v1, "Our Terms Have Changed"

    .line 4616
    const/4 v0, 0x0

    .line 4617
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 4618
    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    .line 4620
    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1562
    :cond_2
    :goto_2
    sget-object v0, Lcom/cbs/app/analytics/Action;->bl:Lcom/cbs/app/analytics/Action;

    .line 1563
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1564
    const-string v2, "events"

    const-string v3, "event8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 4624
    :cond_3
    invoke-virtual {p2}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 4625
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4627
    new-instance v7, Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-direct {v7}, Lcom/cbs/app/view/fragments/TOUDialogFragment;-><init>()V

    .line 4628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4629
    const-string v4, "dialog_title"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    invoke-virtual {v7, v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4631
    new-instance v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Lcom/cbs/app/view/fragments/TOUDialogFragment;)V

    invoke-virtual {v7, v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->setListner(Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;)V

    .line 4660
    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "TOUDialog"

    invoke-virtual {v7, v0, v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v8, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1113
    sget-object v0, Lcom/cbs/app/analytics/Action;->bs:Lcom/cbs/app/analytics/Action;

    .line 1114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1115
    const-string v2, "events"

    const-string v3, "event5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    if-eqz p2, :cond_0

    .line 1117
    const-string v2, "evar_14"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v2, "prop_14"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string v2, "Provider"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_0
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1124
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 763
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 765
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    .prologue
    .line 1996
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1997
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 1998
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1999
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2001
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 2002
    const/4 v9, 0x0

    .line 2003
    const/4 v10, 0x0

    .line 2004
    const/4 v11, 0x0

    .line 2005
    const/4 v5, 0x0

    .line 2006
    const/4 v12, 0x0

    .line 2007
    const/4 v7, 0x0

    .line 2011
    const/16 v17, 0x0

    .line 2012
    const/16 v16, 0x0

    .line 2013
    const/16 v18, 0x0

    .line 2014
    const/16 v19, 0x0

    .line 2015
    const/16 v22, 0x0

    .line 2016
    const/16 v23, 0x0

    .line 2018
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    if-eqz v4, :cond_13

    .line 2021
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v6, 0x7f0f009d

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2022
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 2023
    check-cast v4, Landroid/widget/EditText;

    .line 2024
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2026
    :cond_0
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v6, 0x7f0f009e

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2027
    if-eqz v4, :cond_1

    instance-of v6, v4, Landroid/widget/EditText;

    if-eqz v6, :cond_1

    .line 2028
    check-cast v4, Landroid/widget/EditText;

    .line 2029
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2032
    :cond_1
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v6, 0x7f0f0148

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2033
    if-eqz v4, :cond_2

    instance-of v6, v4, Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 2034
    check-cast v4, Landroid/widget/EditText;

    .line 2035
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2037
    :cond_2
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v6, 0x7f0f0149

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2038
    if-eqz v4, :cond_20

    instance-of v6, v4, Landroid/widget/EditText;

    if-eqz v6, :cond_20

    .line 2039
    check-cast v4, Landroid/widget/EditText;

    .line 2040
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 2042
    :goto_0
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v5, 0x7f0f014a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2043
    if-eqz v4, :cond_3

    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    .line 2044
    check-cast v4, Landroid/widget/EditText;

    .line 2045
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2047
    :cond_3
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v5, 0x7f0f014b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2048
    if-eqz v4, :cond_4

    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_4

    .line 2049
    check-cast v4, Landroid/widget/EditText;

    .line 2050
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 2052
    :cond_4
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2053
    if-eqz v4, :cond_1f

    instance-of v5, v4, Landroid/widget/DatePicker;

    if-eqz v5, :cond_1f

    .line 2054
    check-cast v4, Landroid/widget/DatePicker;

    .line 2055
    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v13

    .line 2056
    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v5

    .line 2058
    add-int/lit8 v14, v5, 0x1

    .line 2060
    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v15

    .line 2062
    :goto_1
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v5, 0x7f0f0152

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2063
    sget-object v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v25, 0x7f0f0151

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2064
    if-eqz v4, :cond_1e

    instance-of v0, v4, Landroid/widget/RadioButton;

    move/from16 v25, v0

    if-eqz v25, :cond_1e

    if-eqz v5, :cond_1e

    instance-of v0, v5, Landroid/widget/RadioButton;

    move/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 2065
    check-cast v4, Landroid/widget/RadioButton;

    .line 2066
    check-cast v5, Landroid/widget/RadioButton;

    .line 2067
    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2068
    const/16 v16, 0x0

    .line 2069
    const/4 v4, 0x1

    move v5, v4

    .line 2075
    :goto_2
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v17, 0x7f0f0153

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2076
    if-eqz v4, :cond_1d

    instance-of v0, v4, Landroid/widget/Spinner;

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 2077
    check-cast v4, Landroid/widget/Spinner;

    .line 2079
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 2080
    packed-switch v4, :pswitch_data_0

    .line 2085
    const-string v17, "O"

    .line 2090
    :goto_3
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v18, 0x7f0f0155

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2091
    if-eqz v4, :cond_1c

    instance-of v0, v4, Landroid/widget/Spinner;

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 2092
    check-cast v4, Landroid/widget/Spinner;

    .line 2094
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 2095
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e001c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 2096
    aget-object v18, v18, v4

    .line 2099
    :goto_4
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v19, 0x7f0f014c

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2100
    if-eqz v4, :cond_1b

    instance-of v0, v4, Landroid/widget/EditText;

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 2101
    check-cast v4, Landroid/widget/EditText;

    .line 2102
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2104
    :goto_5
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v22, 0x7f0f0156

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2105
    if-eqz v4, :cond_1a

    instance-of v0, v4, Landroid/widget/CheckBox;

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2107
    check-cast v4, Landroid/widget/CheckBox;

    .line 2108
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2110
    const/4 v4, 0x1

    .line 2115
    :goto_6
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "accepted: "

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_15

    const-string v22, "true"

    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    const-string v22, "You must provide a first name. "

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v9, v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v22

    .line 2120
    const-string v23, "Select State"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 2121
    const-string v22, "You must provide a state."

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    const/16 v22, 0x1

    .line 2125
    :cond_5
    const-string v23, "You must provide a postal code. "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v22

    .line 2127
    if-eqz v17, :cond_6

    const-string v23, "US"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 2128
    :cond_6
    if-eqz v22, :cond_7

    .line 2129
    const-string v22, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    :cond_7
    const-string v22, "Only United States is allowed at this time."

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    const/16 v22, 0x1

    .line 2135
    :cond_8
    const-string v23, "You must provide a last name. "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v10, v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v22

    .line 2137
    invoke-static {v11}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 2138
    const/16 v22, 0x1

    .line 2139
    const-string v23, "You must provide a valid email."

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    :cond_9
    const-string v23, "You must provide an email. "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v11, v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v22

    .line 2144
    const-string v23, "You must provide a confirmation email. "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v6, v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v22

    .line 2146
    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 2147
    :cond_a
    if-eqz v22, :cond_b

    .line 2148
    const-string v6, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    :cond_b
    const-string v6, "Your email must match your confirmation email."

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    const/4 v6, 0x1

    .line 2153
    :goto_8
    move/from16 v0, v21

    if-ne v13, v0, :cond_d

    move/from16 v0, v20

    if-ne v14, v0, :cond_d

    if-ne v15, v8, :cond_d

    .line 2154
    if-eqz v6, :cond_c

    .line 2155
    const-string v6, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    :cond_c
    const-string v6, "You must select a date of birth."

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    const/4 v6, 0x1

    .line 2160
    :cond_d
    if-nez v5, :cond_18

    .line 2161
    if-eqz v6, :cond_e

    .line 2162
    const-string v5, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    :cond_e
    const-string v5, "You must select a gender."

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    const/4 v5, 0x1

    .line 2168
    :goto_9
    if-nez v4, :cond_17

    .line 2169
    if-eqz v5, :cond_f

    .line 2170
    const-string v4, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    :cond_f
    const-string v4, "You must accept the terms and conditions."

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    const/4 v4, 0x1

    .line 2175
    :goto_a
    if-nez p2, :cond_11

    .line 2177
    const-string v5, "You must provide a password. "

    move-object/from16 v0, v24

    invoke-static {v12, v5, v0, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v4

    .line 2179
    const-string v5, "You must provide a confirmation password. "

    move-object/from16 v0, v24

    invoke-static {v7, v5, v0, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z

    move-result v4

    .line 2181
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2182
    if-eqz v4, :cond_10

    .line 2183
    const-string v4, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    :cond_10
    const-string v4, "Your password must match your confirmation password."

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    const/4 v4, 0x1

    .line 2190
    :cond_11
    if-eqz v4, :cond_16

    .line 2191
    sget-object v4, Lcom/cbs/app/analytics/Action;->br:Lcom/cbs/app/analytics/Action;

    .line 2192
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2193
    const-string v6, "events"

    const-string v7, "event20"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    if-eqz p1, :cond_12

    .line 2195
    const-string v6, "evar_14"

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    const-string v6, "prop_14"

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    const-string v6, "Provider"

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    :cond_12
    const-string v6, "appState"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cbscom:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    const-string v6, "From"

    sget-object v7, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    const-string v6, "Error"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    const-string v6, "evar_70"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    const-string v6, "prop_70"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 2205
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 2206
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v5, 0x7f0f013f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 2208
    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$28;

    invoke-direct {v5, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$28;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2226
    :cond_13
    :goto_b
    return-void

    .line 2070
    :cond_14
    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2071
    const/16 v16, 0x1

    .line 2072
    const/4 v4, 0x1

    move v5, v4

    goto/16 :goto_2

    .line 2082
    :pswitch_0
    const-string v17, "US"

    goto/16 :goto_3

    .line 2115
    :cond_15
    const-string v22, "false"

    goto/16 :goto_7

    .line 5242
    :cond_16
    new-instance v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v20, p4

    invoke-direct/range {v4 .. v20}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5261
    new-instance v5, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v5}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 5262
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v5, v0, v1, v2, v4}, Lcom/cbs/app/service/AuthService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_b

    :cond_17
    move v4, v5

    goto/16 :goto_a

    :cond_18
    move v5, v6

    goto/16 :goto_9

    :cond_19
    move/from16 v6, v22

    goto/16 :goto_8

    :cond_1a
    move/from16 v4, v23

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v19, v22

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v18, v19

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v17, v18

    goto/16 :goto_3

    :cond_1e
    move/from16 v5, v16

    move/from16 v16, v17

    goto/16 :goto_2

    :cond_1f
    move v15, v8

    move/from16 v14, v20

    move/from16 v13, v21

    goto/16 :goto_1

    :cond_20
    move-object v6, v5

    goto/16 :goto_0

    .line 2080
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 35

    .prologue
    .line 1046
    new-instance v18, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v5, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v5}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 1102
    if-nez p2, :cond_0

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    .line 1103
    invoke-interface/range {v5 .. v18}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1109
    :goto_0
    return-void

    :cond_0
    move-object/from16 v19, v5

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    move-object/from16 v26, p6

    move/from16 v27, p8

    move/from16 v28, p9

    move/from16 v29, p10

    move/from16 v30, p11

    move-object/from16 v31, p12

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v34, v18

    .line 1106
    invoke-interface/range {v19 .. v34}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "showCreateDialog provider: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " token: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " secret: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_3

    .line 780
    check-cast p0, Lcom/cbs/app/view/NavigationActivity;

    .line 781
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {p0, v1, p4, v3}, Lcom/cbs/app/view/NavigationActivity;->a(ZLjava/lang/String;Z)V

    .line 784
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->c()V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    move v3, v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 798
    sget-object v0, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    .line 800
    :goto_2
    new-instance v1, Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-direct {v1, v0, p2, p3}, Lcom/cbs/app/livetv/model/SocialProvider;-><init>(Lcom/cbs/app/livetv/model/SocialNames;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/livetv/model/SocialProvider;)V

    goto :goto_0

    .line 787
    :sswitch_0
    const-string v1, "facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v2, "google"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string v1, "twitter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    .line 789
    :pswitch_0
    sget-object v0, Lcom/cbs/app/livetv/model/SocialNames;->a:Lcom/cbs/app/livetv/model/SocialNames;

    goto :goto_2

    .line 792
    :pswitch_1
    sget-object v0, Lcom/cbs/app/livetv/model/SocialNames;->b:Lcom/cbs/app/livetv/model/SocialNames;

    goto :goto_2

    .line 795
    :pswitch_2
    sget-object v0, Lcom/cbs/app/livetv/model/SocialNames;->c:Lcom/cbs/app/livetv/model/SocialNames;

    goto :goto_2

    .line 807
    :cond_3
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    :cond_4
    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;

    invoke-direct {v5, p5, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;-><init>(ZLandroid/content/Context;)V

    .line 826
    new-instance v6, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$10;

    invoke-direct {v6, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$10;-><init>(Landroid/content/Context;)V

    .line 834
    new-instance v7, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$11;

    invoke-direct {v7, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$11;-><init>(Landroid/content/Context;)V

    .line 842
    new-instance v8, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$13;

    invoke-direct {v8, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$13;-><init>(Landroid/content/Context;)V

    .line 850
    new-instance v0, Landroid/app/Dialog;

    const v4, 0x7f0b00e9

    invoke-direct {v0, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 851
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v4, 0x7f030048

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 852
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 854
    if-eqz p6, :cond_5

    .line 856
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v4, 0x7f0f0141

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 859
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v4, 0x7f0f0144

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 860
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 862
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v4, 0x7f0f0143

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 863
    new-instance v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$14;

    invoke-direct {v4, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$14;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    :cond_5
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move v4, v1

    .line 876
    :goto_3
    if-eqz v4, :cond_9

    .line 878
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 879
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 880
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 895
    sget-object v0, Lcom/cbs/app/analytics/Action;->bl:Lcom/cbs/app/analytics/Action;

    .line 896
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 897
    const-string v6, "events"

    const-string v7, "event8"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v6, "appState"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cbscom:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v6, "From"

    sget-object v7, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 925
    :goto_4
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f014a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 926
    if-eqz v0, :cond_6

    .line 927
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 928
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 929
    if-eqz v4, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 931
    :cond_6
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 932
    if-eqz v0, :cond_7

    .line 933
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 934
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 935
    if-eqz v4, :cond_c

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 937
    :cond_7
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setupCreateDialog(Landroid/content/Context;)V

    .line 939
    if-eqz p1, :cond_d

    .line 940
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const-string v1, "Welcome To CBS"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 944
    :goto_7
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 945
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0371

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 946
    new-instance v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0370

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 954
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$16;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_8
    move v4, v3

    .line 875
    goto/16 :goto_3

    .line 904
    :cond_9
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0329

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 905
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 907
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0363

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 909
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 910
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 917
    :goto_8
    sget-object v0, Lcom/cbs/app/analytics/Action;->bq:Lcom/cbs/app/analytics/Action;

    .line 918
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 919
    const-string v6, "events"

    const-string v7, "event8"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v6, "appState"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cbscom:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v6, "From"

    sget-object v7, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_4

    .line 913
    :cond_a
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8

    :cond_b
    move v1, v3

    .line 929
    goto/16 :goto_5

    :cond_c
    move v2, v3

    .line 935
    goto/16 :goto_6

    .line 942
    :cond_d
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const-string v1, "Create a FREE CBS Account"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 787
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49eca1c7 -> :sswitch_1
        -0x369e558d -> :sswitch_2
        0x1da19ac6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 748
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 749
    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1475
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 1476
    new-instance v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;-><init>(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    new-instance v1, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 1533
    invoke-interface {v1, p0, v0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1534
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1466
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 999
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1001
    check-cast v0, Landroid/widget/TextView;

    .line 1002
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1005
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1006
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1009
    :cond_0
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1011
    check-cast v0, Landroid/widget/TextView;

    .line 1012
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1015
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1016
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1019
    :cond_1
    return-void
.end method

.method public static a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 210
    sput-object p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q:Lcom/cbs/app/view/model/VideoData;

    .line 211
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 198
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2272
    const/4 v0, 0x0

    .line 2273
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2274
    :cond_0
    const/4 v0, 0x1

    .line 2276
    :cond_1
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Z
    .locals 1

    .prologue
    .line 2230
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2231
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    const/4 p3, 0x1

    .line 2234
    :cond_0
    return p3
.end method

.method public static b(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    invoke-virtual {p0}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->getErrors()Ljava/util/HashMap;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_3

    .line 1242
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1246
    const-string v2, "firstName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1247
    const-string v1, "First name"

    .line 1251
    :cond_0
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1253
    :pswitch_0
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is required. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1248
    :cond_2
    const-string v2, "lastName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    const-string v1, "Last name"

    goto :goto_1

    .line 1251
    :sswitch_0
    const-string v5, "REQUIRED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v5, "EMAILALREADYEXISTS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v5, "TOOYOUNG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "INVALID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v5, "BADPROVIDER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_2

    .line 1256
    :pswitch_1
    const-string v0, "Email already exists. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1259
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1260
    const-string v1, "We are sorry, but we are unable to create an account for you at this time. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    :goto_3
    return-object v0

    .line 1263
    :pswitch_3
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isn\'t valid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1266
    :pswitch_4
    const-string v0, "Social provider isn\'t valid. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1271
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1251
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60648229 -> :sswitch_3
        -0x5121af68 -> :sswitch_1
        -0x406cbf2a -> :sswitch_4
        -0xb36c6bc -> :sswitch_2
        0x17371b9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 249
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;->a()V

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 255
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 424
    const-string v0, "Sign Into CBS"

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2432
    if-eqz p1, :cond_8

    .line 2433
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2434
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2435
    const v1, 0x7f030019

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2436
    if-eqz v0, :cond_0

    .line 2437
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6445
    :cond_0
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    .line 6446
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 6447
    if-eqz v1, :cond_1

    .line 6448
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 6449
    if-eqz v1, :cond_1

    .line 6450
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 6454
    :cond_1
    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6455
    :cond_2
    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6456
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 6457
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6461
    :cond_3
    if-eqz p1, :cond_8

    .line 6462
    const v0, 0x7f0f009f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6463
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 6464
    check-cast v0, Landroid/widget/Button;

    .line 6465
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$35;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$35;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6474
    :cond_4
    const v0, 0x7f0f009c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6475
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 6476
    check-cast v0, Landroid/widget/TextView;

    .line 6477
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6478
    if-eqz v1, :cond_5

    .line 6479
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You are signed in as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6482
    :cond_5
    const v0, 0x7f0f009d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6483
    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 6484
    check-cast v0, Landroid/widget/TextView;

    .line 6485
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6486
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6488
    :cond_6
    const v0, 0x7f0f009e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6489
    if-eqz v0, :cond_7

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 6490
    check-cast v0, Landroid/widget/TextView;

    .line 6491
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6492
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6494
    :cond_7
    const v0, 0x7f0f009b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6495
    if-eqz v0, :cond_8

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 6496
    check-cast v0, Landroid/widget/TextView;

    .line 6497
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6498
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2441
    :cond_8
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 435
    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_1

    .line 436
    check-cast p0, Lcom/cbs/app/view/NavigationActivity;

    .line 437
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->n()V

    .line 439
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->c()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :cond_2
    new-instance v0, Landroid/app/Dialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030073

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 448
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f03004b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 449
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 450
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 451
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 453
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v4, 0x7f0f015c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 454
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 458
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$47;

    invoke-direct {v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$47;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 469
    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$2;

    invoke-direct {v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$2;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 475
    new-instance v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;

    invoke-direct {v4, v0, v1, p0, p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$4;

    invoke-direct {v5, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$4;-><init>(Landroid/content/Context;)V

    .line 509
    new-instance v6, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$5;

    invoke-direct {v6, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$5;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v7, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$6;

    invoke-direct {v7, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$6;-><init>(Landroid/content/Context;)V

    .line 527
    new-instance v8, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$7;

    invoke-direct {v8, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$7;-><init>(Landroid/content/Context;)V

    .line 538
    new-instance v9, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$8;

    invoke-direct {v9, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$8;-><init>(Landroid/content/Context;)V

    .line 548
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f015a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 549
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    .line 3637
    const-string v10, "My CBS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3639
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3640
    new-instance v1, Lcom/cbs/app/db/MyShowDataSource;

    invoke-direct {v1, p0}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    .line 3641
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 3642
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v10

    .line 3643
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 3644
    if-eqz v10, :cond_18

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    move v1, v2

    .line 3648
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3649
    if-eqz v1, :cond_9

    .line 3650
    const-string v1, "Good news! We\'ve improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :goto_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f015b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_3
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 558
    check-cast v0, Landroid/widget/Button;

    .line 559
    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    :cond_4
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f015d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_5

    .line 563
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    :cond_5
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f0329

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 566
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 568
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f0363

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 570
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 571
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 572
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    :goto_3
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    .line 579
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 580
    const-string v0, "CBS ALL ACCESS Sign In"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 581
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    move v2, v3

    .line 586
    :goto_4
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    :cond_6
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_7

    .line 592
    const-string v1, "CBS ALL ACCESS Sign In"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 593
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_7
    :goto_5
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_8

    .line 600
    const-string v1, "CBS ALL ACCESS Sign In"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 601
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_8
    :goto_6
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 609
    if-eqz v2, :cond_15

    .line 610
    sget-object v0, Lcom/cbs/app/analytics/Action;->bj:Lcom/cbs/app/analytics/Action;

    .line 611
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 612
    const-string v2, "events"

    const-string v3, "event22"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v2, "From"

    sget-object v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3655
    :cond_9
    const-string v1, "My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3660
    :cond_a
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    const-string v10, "Settings"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3661
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3662
    const-string v1, "Sign in now to join the conversation with fellow fans. Don\'t have a CBS Account? Sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3665
    :cond_b
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    const-string v10, "Show Page"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3667
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3668
    new-instance v1, Lcom/cbs/app/db/MyShowDataSource;

    invoke-direct {v1, p0}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    .line 3669
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 3670
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v10

    .line 3671
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 3672
    if-eqz v10, :cond_17

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    move v1, v2

    .line 3676
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3677
    if-eqz v1, :cond_c

    .line 3678
    const-string v1, "Good news! We\'ve improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3683
    :cond_c
    const-string v1, "My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3688
    :cond_d
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    const-string v10, "Schedule"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3690
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3691
    new-instance v1, Lcom/cbs/app/db/MyShowDataSource;

    invoke-direct {v1, p0}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    .line 3692
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 3693
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v10

    .line 3694
    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 3695
    if-eqz v10, :cond_16

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    move v1, v2

    .line 3699
    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3700
    if-eqz v1, :cond_e

    .line 3701
    const-string v1, "Good news! We\'ve improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3706
    :cond_e
    const-string v1, "My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3711
    :cond_f
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    const-string v10, "Comments Page"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3712
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3713
    const-string v1, "Sign in now to join the conversation with fellow fans. Don\'t have a CBS Account? Sign up for FREE!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3717
    :cond_10
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3718
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 574
    :cond_11
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 584
    :cond_12
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 595
    :cond_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 603
    :cond_14
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 617
    :cond_15
    sget-object v0, Lcom/cbs/app/analytics/Action;->bP:Lcom/cbs/app/analytics/Action;

    .line 618
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 619
    const-string v2, "pageView"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "events"

    const-string v3, "event22"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "evar_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "prop_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v2, "From"

    sget-object v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_16
    move v1, v3

    goto :goto_8

    :cond_17
    move v1, v3

    goto/16 :goto_7

    :cond_18
    move v1, v3

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1423
    sget-object v0, Lcom/cbs/app/analytics/Action;->bk:Lcom/cbs/app/analytics/Action;

    .line 1424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1425
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    const-string v2, "Error"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const-string v2, "evar_70"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    const-string v2, "prop_70"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1432
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1127
    sget-object v0, Lcom/cbs/app/analytics/Action;->br:Lcom/cbs/app/analytics/Action;

    .line 1128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1129
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    if-eqz p2, :cond_0

    .line 1131
    const-string v2, "evar_14"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v2, "prop_14"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string v2, "Provider"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :cond_0
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string v2, "Error"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v2, "evar_70"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v2, "prop_70"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1141
    return-void
.end method

.method public static b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2782
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1664
    const/4 v0, 0x0

    .line 1666
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1667
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_0
    return-object v0

    .line 1669
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1144
    .line 1145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1148
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized c()V
    .locals 2

    .prologue
    .line 2280
    const-class v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2282
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    .line 2284
    :cond_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2285
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2286
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    :cond_1
    monitor-exit v1

    return-void

    .line 2280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 752
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 753
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1452
    sget-object v0, Lcom/cbs/app/analytics/Action;->bm:Lcom/cbs/app/analytics/Action;

    .line 1453
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1454
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string v2, "evar_70"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1459
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1337
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setEmailCache(Ljava/lang/String;)V

    .line 1338
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setPasswordCache(Ljava/lang/String;)V

    .line 1339
    new-instance v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;

    invoke-direct {v0, p0, p3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1418
    new-instance v1, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 1419
    invoke-interface {v1, p0, p1, p2, v0}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1420
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2521
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2292
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q()V

    .line 2293
    new-instance v0, Lcom/cbs/app/service/social/FacebookServiceImplV2;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;-><init>(Landroid/content/Context;)V

    .line 2294
    invoke-interface {v0}, Lcom/cbs/app/service/social/FacebookService;->b()V

    .line 2295
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 757
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 758
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storeTOUAcceptance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1683
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accepted_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1686
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reconcileProviderToken provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    sget-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z

    if-eqz v0, :cond_0

    .line 1791
    new-instance v5, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1849
    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/service/AuthService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1852
    :cond_0
    return-void
.end method

.method static synthetic e()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2299
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q()V

    .line 2300
    new-instance v0, Lcom/cbs/app/service/social/Twitter;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/social/Twitter;-><init>(Landroid/content/Context;)V

    .line 2301
    invoke-virtual {v0}, Lcom/cbs/app/service/social/Twitter;->a()V

    .line 2302
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1462
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1858
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserType()I

    move-result v1

    .line 1860
    packed-switch v1, :pswitch_data_0

    .line 1874
    const-string v0, ""

    .line 1878
    :goto_0
    sget-object v2, Lcom/cbs/app/analytics/Action;->bp:Lcom/cbs/app/analytics/Action;

    .line 1879
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1880
    const-string v4, "events"

    const-string v5, "event28"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    const-string v4, "evar_14"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    const-string v4, "prop_14"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    const-string v4, "appState"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    const-string v4, "From"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-string v4, "userStatusStr"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    invoke-static {p0, v2, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1890
    sget-object v0, Lcom/cbs/app/analytics/Action;->bH:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v0, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->d(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1891
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 1892
    sget-object v0, Lcom/cbs/app/analytics/Action;->bG:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v0, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->d(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1894
    :cond_0
    return-void

    .line 1862
    :pswitch_0
    const-string v0, "registered"

    goto :goto_0

    .line 1865
    :pswitch_1
    const-string v0, "subscriber"

    goto :goto_0

    .line 1868
    :pswitch_2
    const-string v0, "suspended"

    goto :goto_0

    .line 1871
    :pswitch_3
    const-string v0, "exsubscriber"

    goto :goto_0

    .line 1860
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic f()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1676
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1677
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accepted_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2306
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q()V

    .line 2307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2308
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2309
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2704
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2705
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b00e9

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2706
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$42;

    invoke-direct {v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$42;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2716
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2717
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2719
    :cond_0
    return-void
.end method

.method static synthetic g()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2504
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2513
    :goto_0
    return-object v0

    .line 2507
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2508
    const-string v2, "firstName"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2509
    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2510
    const-string v3, "lastName"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getEmailCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2423
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getFrom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPasswordCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2415
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoData()Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->q:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic h()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->p:Landroid/widget/Button;

    return-object v0
.end method

.method protected static h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2525
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 2526
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2727
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2728
    if-nez v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    if-nez v0, :cond_0

    .line 2730
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2731
    if-eqz v0, :cond_2

    .line 2733
    const-string v1, "facebook"

    invoke-static {p0, v1, v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    sput-boolean v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 2753
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    if-nez v0, :cond_1

    .line 2754
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 2756
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l:Z

    .line 2757
    return-void

    .line 2736
    :cond_2
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2737
    if-eqz v0, :cond_3

    .line 2739
    const-string v1, "google"

    invoke-static {p0, v1, v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    sput-boolean v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    goto :goto_0

    .line 2742
    :cond_3
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->D(Landroid/content/Context;)Lcom/cbs/app/service/social/TwitterOAuthTokens;

    move-result-object v0

    .line 2743
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2745
    const-string v1, "twitter"

    iget-object v2, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    sput-boolean v3, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    goto :goto_0
.end method

.method static synthetic j()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6692
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->r:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6693
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->r:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 6694
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->r:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 6697
    :cond_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->s:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6698
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->s:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 6699
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->s:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    return-void
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z

    return v0
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 724
    const/4 v0, 0x1

    .line 725
    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v1

    .line 726
    if-eqz v1, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 737
    :cond_0
    return v0
.end method

.method static synthetic l()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method private static l(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2760
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0f02bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2761
    if-eqz v0, :cond_0

    .line 2762
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/menu/CbsMenuAdapter;

    .line 2764
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2765
    const v2, 0x7f08021b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2766
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    move-object v0, v2

    .line 2771
    :goto_0
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/menu/CbsMenuAdapter;->a(Ljava/lang/String;)V

    .line 2773
    :cond_0
    return-void

    .line 2768
    :cond_1
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2769
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic m()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic n()Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->r:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic o()Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->s:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method private static declared-synchronized p()Z
    .locals 2

    .prologue
    .line 178
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static q()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2312
    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l:Z

    .line 2313
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 2314
    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z

    .line 2315
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 2316
    return-void
.end method

.method public static setEmailCache(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2427
    sput-object p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->m:Ljava/lang/String;

    .line 2428
    return-void
.end method

.method public static declared-synchronized setFrom(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v0

    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setIsPlayerActive(Z)V
    .locals 0

    .prologue
    .line 258
    sput-boolean p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h:Z

    .line 259
    return-void
.end method

.method public static declared-synchronized setLoginIsShowing(Z)V
    .locals 2

    .prologue
    .line 170
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setPasswordCache(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2419
    sput-object p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->n:Ljava/lang/String;

    .line 2420
    return-void
.end method

.method public static declared-synchronized setReconcileDialogShowing(Z)V
    .locals 2

    .prologue
    .line 161
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit v0

    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSocialWasShowing(Z)V
    .locals 2

    .prologue
    .line 194
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit v0

    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setTermsDialogIsShowing(Z)V
    .locals 2

    .prologue
    .line 182
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setupCreateDialog(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/16 v9, 0x79

    const/16 v8, 0x6d

    const/4 v7, 0x0

    const v6, 0x7f0d0028

    const/16 v5, 0x21

    .line 1898
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1899
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1900
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1902
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1903
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v4, 0x7f0f014e

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1904
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/widget/DatePicker;

    if-eqz v4, :cond_0

    .line 1905
    check-cast v0, Landroid/widget/DatePicker;

    .line 1906
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 1908
    :cond_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 1909
    if-eqz v0, :cond_1

    .line 1910
    invoke-virtual {v0, v7, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1911
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$24;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1934
    :cond_1
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e:Landroid/app/Dialog;

    const v1, 0x7f0f0156

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1936
    const v1, 0x7f08022b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1939
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1940
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$25;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$25;-><init>(Landroid/content/Context;)V

    .line 1950
    invoke-interface {v2, v1, v8, v9, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1951
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v1, v8, v9, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1956
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$26;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$26;-><init>(Landroid/content/Context;)V

    .line 1966
    const/16 v3, 0x7a

    const/16 v4, 0x8a

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1967
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x7a

    const/16 v4, 0x8a

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1970
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1971
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1975
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$27;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$27;-><init>(Landroid/content/Context;)V

    .line 1985
    const/16 v3, 0x8e

    const/16 v4, 0xa3

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1986
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x8e

    const/16 v4, 0xa3

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1989
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1990
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    return-void
.end method
