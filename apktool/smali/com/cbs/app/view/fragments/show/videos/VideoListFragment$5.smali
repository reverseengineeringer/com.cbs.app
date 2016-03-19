.class final Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->i(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Z)Z

    .line 310
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;F)F

    .line 313
    const/high16 v0, 0x437a0000    # 250.0f

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->k(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 314
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 316
    if-le v1, v0, :cond_2

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->j(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 324
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->a:Landroid/view/View;

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 328
    :cond_0
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->m(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$5;->b:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 319
    goto :goto_0
.end method
