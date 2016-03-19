.class public Lcom/cbs/app/adapter/ShowAlbumsAdapter2;
.super Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private e:[Lcom/cbs/app/view/model/ShowAlbum;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/cbs/app/view/model/ShowAlbum;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, [Lcom/cbs/app/view/model/ShowAlbum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowAlbum;

    iput-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->e:[Lcom/cbs/app/view/model/ShowAlbum;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 44
    if-nez p2, :cond_6

    .line 45
    iget-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f030023

    .line 48
    iget-object v2, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    const v1, 0x7f030024

    .line 51
    :cond_1
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;

    invoke-direct {v1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;-><init>()V

    .line 53
    const v0, 0x7f0f00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->b:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->a:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0f00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0f00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->d:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 2031
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->e:[Lcom/cbs/app/view/model/ShowAlbum;

    aget-object v1, v1, p1

    .line 1087
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1089
    iget-object v2, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1090
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowAlbum;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1091
    const-string v3, "Season "

    const-string v4, "S"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    const-string v3, "Episode "

    const-string v4, "Ep"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    iget-object v3, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v2, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowAlbum;->getTotal_photos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowAlbum;->getLive_date_sec()J

    move-result-wide v2

    .line 1096
    iget-object v4, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->d:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowAlbum;->getFilepath()Ljava/lang/String;

    move-result-object v2

    .line 1100
    if-eqz v2, :cond_7

    .line 1101
    iget-object v1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v3

    .line 1103
    const/16 v1, 0xf0

    .line 1107
    iget-object v4, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1108
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v4

    .line 1109
    const/4 v1, 0x3

    .line 1110
    iget-object v5, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1111
    const/4 v1, 0x4

    .line 1114
    :cond_3
    int-to-double v4, v4

    int-to-double v6, v1

    div-double/2addr v4, v6

    .line 1115
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1117
    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v6, v8

    .line 1118
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1120
    iget-object v1, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1124
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1126
    iget-object v4, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    :cond_4
    int-to-double v4, v1

    int-to-float v1, v3

    invoke-static {v2, v4, v5, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v1

    .line 1131
    iget-object v0, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 64
    :cond_5
    :goto_1
    return-object p2

    .line 59
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;

    goto/16 :goto_0

    .line 1133
    :cond_7
    iget-object v0, v0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    .line 3031
    iget-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->e:[Lcom/cbs/app/view/model/ShowAlbum;

    aget-object v0, v0, p1

    .line 18
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->e:[Lcom/cbs/app/view/model/ShowAlbum;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->e:[Lcom/cbs/app/view/model/ShowAlbum;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 74
    return p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->getCount()I

    move-result v0

    .line 80
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
