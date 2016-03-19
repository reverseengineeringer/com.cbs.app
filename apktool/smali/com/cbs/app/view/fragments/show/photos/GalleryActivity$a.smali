.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 781
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->c:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 782
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 783
    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    .line 784
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020132

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->b:Landroid/graphics/Bitmap;

    .line 785
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context ViewPagerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 885
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 886
    if-eqz p3, :cond_0

    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 887
    check-cast p3, Landroid/view/View;

    .line 888
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 891
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->c:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->c:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 831
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 833
    new-instance v1, Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;-><init>(Landroid/content/Context;)V

    .line 834
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->c:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 836
    invoke-virtual {v1, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setTag(Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v1, v6}, Lru/truba/touchgallery/TouchView/TouchImageView;->setEnabled(Z)V

    .line 838
    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getFilepath()Ljava/lang/String;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_2

    .line 840
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v3

    .line 841
    const/16 v0, 0x190

    .line 842
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 843
    :cond_0
    const/16 v0, 0x258

    .line 845
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 854
    int-to-double v4, v0

    int-to-float v0, v3

    invoke-static {v2, v4, v5, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 856
    new-instance v2, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a$1;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;)V

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/f/c;)V

    .line 875
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 877
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 879
    :cond_2
    invoke-virtual {p1, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 880
    return-object v1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 904
    .line 905
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 906
    check-cast p2, Landroid/view/View;

    .line 907
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 909
    :cond_0
    return v0
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 790
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 791
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 792
    if-eqz p1, :cond_0

    instance-of v0, p1, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p3, Lru/truba/touchgallery/TouchView/TouchImageView;

    if-eqz v0, :cond_0

    .line 793
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPrimaryItem found it, context: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 794
    check-cast p1, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    .line 795
    check-cast p3, Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-object p3, p1, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    .line 797
    :cond_0
    return-void
.end method
