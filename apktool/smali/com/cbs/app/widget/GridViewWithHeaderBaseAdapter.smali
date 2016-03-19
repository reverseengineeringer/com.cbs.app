.class public abstract Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;,
        Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field protected c:I

.field protected d:F

.field private e:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a:Landroid/content/Context;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 13
    .line 1031
    iget-object v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->e:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->e:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    invoke-interface {v0, p2}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;->a(I)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(ILandroid/view/View;)Landroid/view/View;
.end method

.method protected a(II)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    .line 89
    :goto_0
    iget v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    if-ge v1, v0, :cond_2

    .line 90
    iget v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    mul-int/2addr v0, p1

    add-int v4, v0, v1

    .line 93
    invoke-virtual {p0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v5, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;

    invoke-direct {v5, p0, v4}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;-><init>(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    instance-of v4, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    if-eqz v4, :cond_1

    .line 104
    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    int-to-float v4, p2

    iget v5, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, p2, v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    .line 89
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 107
    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 111
    :cond_2
    return-object v3
.end method

.method protected final a(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->d:F

    .line 52
    return-void
.end method

.method protected a(ILandroid/widget/LinearLayout;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 115
    move v2, v3

    :goto_0
    iget v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    if-ge v2, v0, :cond_3

    .line 116
    iget v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    mul-int/2addr v0, p1

    add-int v4, v0, v2

    .line 117
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    instance-of v0, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 125
    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    int-to-float v5, p3

    iget v6, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, p3, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    new-instance v0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;

    invoke-direct {v0, p0, v4}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;-><init>(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 128
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 141
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 144
    :cond_3
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract getItemCount()I
.end method

.method public final getNumColumns()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    div-int/2addr v0, v1

    .line 73
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a(II)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 81
    :goto_1
    return-object p2

    .line 69
    :cond_1
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    div-int/2addr v0, v1

    goto :goto_0

    .line 77
    :cond_2
    check-cast p2, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a(ILandroid/widget/LinearLayout;I)V

    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->c:I

    .line 42
    invoke-virtual {p0}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public final setOnGridClickListener(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->e:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    .line 28
    return-void
.end method
