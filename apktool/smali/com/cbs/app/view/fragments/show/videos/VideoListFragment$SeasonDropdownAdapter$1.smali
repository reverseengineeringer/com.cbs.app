.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;I)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iput p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->r(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)I

    .line 930
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 931
    invoke-static {}, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->a()V

    .line 932
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->a:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setSeasonSelection(I)V

    .line 934
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->s(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "previousSeasonSelection"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->a:I

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 935
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 938
    :cond_0
    return-void
.end method
