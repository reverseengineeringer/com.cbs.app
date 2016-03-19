.class public Lcom/cbs/app/adapter/ShowAlbumsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/cbs/app/view/model/ShowAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 83
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p2, :cond_3

    .line 34
    iget-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    iget v1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    new-instance v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;

    invoke-direct {v1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;-><init>()V

    .line 42
    const v0, 0x7f0f00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 45
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->b:Landroid/widget/ImageView;

    .line 47
    :cond_0
    const v0, 0x7f0f0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 49
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->a:Landroid/widget/TextView;

    .line 51
    :cond_1
    const v0, 0x7f0f00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 53
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->c:Landroid/widget/TextView;

    .line 55
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1066
    iget-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowAlbum;

    .line 1068
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowAlbum;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1069
    const-string v3, "Season "

    const-string v4, "S"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    const-string v3, "Episode "

    const-string v4, "Ep"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    iget-object v3, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v2, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowAlbum;->getTotal_photos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v2, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v2

    .line 1074
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowAlbum;->getFilepath()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->c:I

    int-to-double v4, v3

    int-to-float v2, v2

    invoke-static {v0, v4, v5, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 1077
    iget-object v1, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter$a;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 61
    :cond_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/cbs/app/adapter/ShowAlbumsAdapter;->getCount()I

    move-result v0

    .line 89
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
