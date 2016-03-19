.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 94
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->setActionbar(I)V

    .line 101
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->setData(I)V

    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cbs/app/view/InterstitialAdManagerV2;->a(Landroid/app/Activity;I)V

    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    iget-boolean v0, v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b()V

    .line 106
    :cond_0
    return-void
.end method
