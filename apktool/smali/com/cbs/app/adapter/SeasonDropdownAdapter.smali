.class public Lcom/cbs/app/adapter/SeasonDropdownAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:Landroid/content/Context;


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/adapter/SeasonDropdownAdapter;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 34
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbs/app/adapter/SeasonDropdownAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 41
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 42
    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    new-instance v1, Lcom/cbs/app/adapter/SeasonDropdownAdapter$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/adapter/SeasonDropdownAdapter$1;-><init>(Lcom/cbs/app/adapter/SeasonDropdownAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-object v0
.end method
