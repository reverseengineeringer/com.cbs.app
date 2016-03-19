.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 842
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v5, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v5, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    const v1, 0x7f0f02a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 848
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 850
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 851
    if-eqz v1, :cond_1

    .line 852
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 853
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 854
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 859
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 860
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 861
    if-eqz v1, :cond_2

    .line 862
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 863
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 864
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 868
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-boolean v4, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->h:Z

    .line 869
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->getLiveFyreToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 870
    const-string v0, "Comments Page"

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    .line 876
    :goto_0
    if-eqz v0, :cond_3

    .line 880
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 881
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 882
    invoke-static {v4}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 884
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    .line 892
    :cond_3
    :goto_1
    return-void

    .line 887
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 890
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    const-string v1, "You must enter text to submit a comment."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_0
.end method
