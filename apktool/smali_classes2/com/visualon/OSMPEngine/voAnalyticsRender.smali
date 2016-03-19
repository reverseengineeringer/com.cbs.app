.class public Lcom/visualon/OSMPEngine/voAnalyticsRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPEngine/voAnalyticsRender$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "voAnalyticsRender"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

.field private mLeftLayout:Landroid/widget/LinearLayout;

.field private mRightLayout:Landroid/widget/LinearLayout;

.field private mTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/widget/RelativeLayout;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    .line 36
    iput v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    .line 37
    iput v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    .line 38
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    .line 42
    return-void
.end method

.method private refresh()V
    .locals 11

    .prologue
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    if-nez v0, :cond_1

    .line 83
    const-string v0, "voAnalyticsRender"

    const-string v2, "Clear analytics render"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    .line 180
    :cond_0
    return-void

    .line 91
    :cond_1
    const-string v0, "voAnalyticsRender"

    const-string v2, "Rendering analytics on %d x %d view"

    new-array v3, v10, [Ljava/lang/Object;

    iget v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    div-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    div-int/lit8 v3, v3, 0x14

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 94
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 99
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 101
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 110
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    .line 111
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 112
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-eq v0, v2, :cond_5

    .line 118
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getCount()I

    move-result v0

    .line 123
    const/16 v2, 0xb

    if-le v0, v2, :cond_4

    .line 124
    :goto_0
    iget v2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getCount()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 125
    iget v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    int-to-double v4, v3

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v3, v4

    move v0, v1

    .line 126
    :goto_1
    iget-object v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 128
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    iget-object v6, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    int-to-float v6, v3

    invoke-virtual {v4, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 135
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 138
    iget-object v6, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v6, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v5, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    int-to-float v5, v3

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 147
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_4
    const/16 v0, 0xc

    goto :goto_0

    :cond_5
    move v2, v1

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 153
    const-string v0, ""

    .line 154
    sget-object v3, Lcom/visualon/OSMPEngine/voAnalyticsRender$1;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_DISPLAY_ITEM_TYPE:[I

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v4, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayType(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move-object v3, v0

    .line 175
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v4, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v3, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v0, "voAnalyticsRender"

    const-string v3, "Line %d: %s::%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v5, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v5, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const/16 v3, 0xff

    const/16 v4, 0x90

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 161
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v3, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v0, "voAnalyticsRender"

    const-string v3, "Line %d: %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-interface {v5, v2}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_1
    move-object v3, v0

    .line 166
    goto/16 :goto_3

    .line 168
    :pswitch_2
    const-string v0, "  "

    move-object v3, v0

    .line 169
    goto/16 :goto_3

    .line 171
    :pswitch_3
    const-string v0, "    "

    move-object v3, v0

    goto/16 :goto_3

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setDispalyData(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "voAnalyticsRender"

    const-string v1, "Don\'t Render, parent view is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    .line 76
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->refresh()V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    .line 49
    return-void
.end method

.method public setViewSize(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput p1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewWidth:I

    .line 54
    iput p2, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mViewHeight:I

    .line 56
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mLeftLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mRightLayout:Landroid/widget/LinearLayout;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voAnalyticsRender;->mData:Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->refresh()V

    .line 66
    :cond_1
    return-void
.end method
