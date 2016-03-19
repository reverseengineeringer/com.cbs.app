.class public Lcom/cbs/app/view/fragments/TOUDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x21

    .line 125
    new-instance v0, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;

    invoke-direct {v0, p0, p4}, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;-><init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;Ljava/lang/String;)V

    .line 134
    invoke-interface {p1, v0, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 135
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->d:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/TOUDialogFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    .line 1112
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->c:Z

    if-nez v0, :cond_0

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->c:Z

    .line 1114
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;->a()V

    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setTermsDialogIsShowing(Z)V

    .line 1118
    sput-boolean v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 1119
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/TOUDialogFragment;)Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->d:I

    .line 48
    invoke-static {v0, v3}, Lcom/cbs/app/view/utils/Preferences;->c(Landroid/content/Context;Z)V

    .line 49
    invoke-static {v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setTermsDialogIsShowing(Z)V

    .line 50
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010e

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/cbs/app/view/fragments/TOUDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment$1;-><init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;)V

    .line 59
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0b00e9

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Submit"

    invoke-virtual {v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 68
    invoke-virtual {p0, v7}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->setCancelable(Z)V

    .line 1099
    const v0, 0x7f0f03c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    const v1, 0x7f08022b

    invoke-virtual {p0, v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1102
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1103
    const/16 v1, 0x6d

    const/16 v4, 0x79

    const-string v5, "http://legalterms.cbsinteractive.com/terms-of-use"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1104
    const/16 v1, 0x7a

    const/16 v4, 0x8a

    const-string v5, "http://legalterms.cbsinteractive.com/privacy"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1105
    const/16 v1, 0x8e

    const/16 v4, 0xa3

    const-string v5, "http://legalterms.cbsinteractive.com/video-services"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1107
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-object v2
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 77
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;-><init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public setListner(Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    .line 42
    return-void
.end method
