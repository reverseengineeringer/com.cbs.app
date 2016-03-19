.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;-><init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;)V

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 193
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 194
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 195
    return-void
.end method
