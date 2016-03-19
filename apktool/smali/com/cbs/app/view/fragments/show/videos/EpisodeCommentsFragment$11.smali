.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 690
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 691
    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 692
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v6, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 694
    const v0, 0x7f0f0012

    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 695
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 697
    const-string v1, "input_method"

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 698
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v5, v5, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 701
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 702
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v1}, Lcom/cbs/app/service/LiveFyreService;->getLiveFyreToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 703
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 704
    const-string v1, "input_method"

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 705
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 706
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 708
    :cond_2
    const-string v0, "Comments Page"

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 714
    :goto_0
    if-eqz v0, :cond_3

    .line 717
    invoke-static {v6}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 718
    invoke-static {v6}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 720
    invoke-static {v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    .line 736
    :cond_3
    :goto_1
    return-void

    .line 723
    :cond_4
    const-string v1, "input_method"

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 724
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 725
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 727
    :cond_5
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0, v6}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_6
    const-string v0, "You must enter text to submit a comment."

    invoke-static {v4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0, v4, v6}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_0
.end method
