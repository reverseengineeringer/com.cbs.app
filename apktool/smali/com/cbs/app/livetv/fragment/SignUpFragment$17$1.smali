.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignUpFragment$17;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->c(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 213
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->d(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$1;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->c(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method
