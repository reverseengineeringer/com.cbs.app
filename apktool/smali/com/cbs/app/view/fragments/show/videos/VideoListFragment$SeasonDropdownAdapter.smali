.class public Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeasonDropdownAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 871
    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->c:Landroid/content/Context;

    .line 872
    iput-object p3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->b:Ljava/util/ArrayList;

    .line 873
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 886
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 892
    if-nez p2, :cond_2

    .line 893
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 894
    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 895
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;)V

    .line 896
    const v0, 0x7f0f02e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    .line 897
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1907
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1908
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1910
    const/high16 v2, 0x42480000    # 50.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1911
    iget-object v2, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 1912
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->q(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 1913
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    const/16 v2, 0xa

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1914
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1915
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0d00c4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1916
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;->a:Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1918
    const/16 v2, 0x457

    if-ne v0, v2, :cond_3

    .line 1919
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    const-string v2, "Clips"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    :cond_0
    :goto_1
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    :cond_1
    return-object p2

    .line 899
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;

    move-object v1, v0

    goto/16 :goto_0

    .line 1920
    :cond_3
    const/16 v2, 0x8ae

    if-ne v0, v2, :cond_4

    .line 1921
    iget-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    const-string v2, "Full Episodes"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1923
    :cond_4
    iget-object v2, v1, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment$SeasonDropdownAdapter$a;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Season "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
