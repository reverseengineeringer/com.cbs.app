.class public Lcom/cbs/app/listener/VideoListViewOnScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Landroid/support/v7/app/AppCompatActivity;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->c:Landroid/support/v7/app/AppCompatActivity;

    .line 25
    iput p2, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->d:I

    .line 26
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 48
    add-int v0, p2, p3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnScroll :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    if-ne v0, p4, :cond_0

    .line 51
    sget v1, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->b:I

    if-eq v1, v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Last"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    sput v0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->b:I

    .line 54
    iget-object v0, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->c:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->c:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "show_video_list_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 61
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->getPreviousBatchSize()I

    move-result v0

    const/16 v2, 0x3b

    if-le v0, v2, :cond_0

    .line 62
    check-cast v1, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;

    iget v0, p0, Lcom/cbs/app/listener/VideoListViewOnScrollListener;->d:I

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/AbstractVideoListFragment;->a(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
