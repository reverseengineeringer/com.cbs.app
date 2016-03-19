.class public Lcom/cbs/app/adapter/DeviceCastAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/DeviceCastAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/cbs/app/view/model/DeviceCast;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const v1, 0x7f030029

    .line 33
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->c:I

    .line 34
    iput-object p1, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    .line 35
    iput v1, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 48
    if-nez p2, :cond_5

    .line 49
    iget-object v0, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    iget v1, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->b:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;

    invoke-direct {v1}, Lcom/cbs/app/adapter/DeviceCastAdapter$a;-><init>()V

    .line 53
    const v0, 0x7f0f0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->a:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f00dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0f00dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->c:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1069
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cbs/app/adapter/DeviceCastAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    .line 1070
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1071
    iget-object v3, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1074
    iget-object v3, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getCharacterName()Ljava/lang/String;

    move-result-object v3

    .line 1076
    iget-object v4, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->c:Landroid/widget/TextView;

    .line 1077
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1078
    const-string v5, "As"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1079
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "As "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    :goto_1
    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    :cond_0
    iget v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->c:I

    if-ne p1, v3, :cond_7

    .line 1087
    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1095
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1096
    :cond_2
    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPhoneThumb()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1097
    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPhoneThumb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    :goto_3
    if-eqz v0, :cond_a

    .line 1105
    iget-object v2, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v2

    .line 1106
    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1107
    :cond_3
    const-wide/high16 v4, 0x4062000000000000L    # 144.0

    int-to-float v2, v2

    invoke-static {v0, v4, v5, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 1111
    :goto_4
    iget-object v1, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 64
    :cond_4
    :goto_5
    return-object p2

    .line 59
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/DeviceCastAdapter$a;

    move-object v1, v0

    goto/16 :goto_0

    .line 1081
    :cond_6
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1089
    :cond_7
    iget-object v3, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00b8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 1100
    :cond_8
    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPadThumb()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1101
    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPadThumb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 1109
    :cond_9
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    int-to-float v2, v2

    invoke-static {v0, v4, v5, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1114
    :cond_a
    iget-object v0, v1, Lcom/cbs/app/adapter/DeviceCastAdapter$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_b
    move-object v0, v2

    goto :goto_3
.end method

.method public setSelected(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/cbs/app/adapter/DeviceCastAdapter;->c:I

    .line 121
    return-void
.end method
