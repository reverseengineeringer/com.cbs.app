.class final Lcom/cbs/app/view/ShowSearchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/ShowSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;

.field final synthetic b:Lcom/cbs/app/view/ShowSearchActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/ShowSearchActivity;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cbs/app/view/ShowSearchActivity$1;->b:Lcom/cbs/app/view/ShowSearchActivity;

    iput-object p2, p0, Lcom/cbs/app/view/ShowSearchActivity$1;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity$1;->b:Lcom/cbs/app/view/ShowSearchActivity;

    invoke-static {v0}, Lcom/cbs/app/view/ShowSearchActivity;->a(Lcom/cbs/app/view/ShowSearchActivity;)Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->a(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity$1;->b:Lcom/cbs/app/view/ShowSearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/ShowSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/cbs/app/view/ShowSearchActivity$1;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
