.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 185
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->c(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->d(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    .line 188
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8$1;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$8;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->d(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 189
    return-void
.end method
