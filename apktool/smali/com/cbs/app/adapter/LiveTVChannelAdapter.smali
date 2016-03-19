.class public Lcom/cbs/app/adapter/LiveTVChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakChannel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/ChannelLogos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 56
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 68
    if-nez p2, :cond_4

    .line 69
    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 70
    const v2, 0x7f0300a0

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 72
    new-instance v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;

    invoke-direct {v2, v7}, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;-><init>(B)V

    .line 73
    const v1, 0x7f0f0285

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->a:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0f0286

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->b:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0f0287

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->c:Landroid/widget/TextView;

    .line 76
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/ChannelLogos;

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ChannelLogos;->getSelectedImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 81
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ChannelLogos;->getNormalImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    if-eqz v4, :cond_0

    .line 83
    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    new-array v4, v7, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_1
    iget-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, v2, Lcom/cbs/app/adapter/LiveTVChannelAdapter$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :cond_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/cbs/app/adapter/LiveTVChannelAdapter;->getCount()I

    move-result v0

    .line 62
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
