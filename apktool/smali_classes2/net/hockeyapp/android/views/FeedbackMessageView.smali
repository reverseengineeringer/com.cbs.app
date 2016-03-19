.class public Lnet/hockeyapp/android/views/FeedbackMessageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;B)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->d:Z

    .line 1073
    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setOrientation(I)V

    .line 1074
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setGravity(I)V

    .line 1075
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 1079
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    .line 1080
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/16 v1, 0x3001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1082
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1083
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1086
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1087
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1089
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1090
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1092
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1094
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 1114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    .line 1115
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1118
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1121
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1122
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1124
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1125
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1126
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1127
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1129
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 1149
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    .line 1150
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1153
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1156
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1157
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1159
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1160
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1161
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1162
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1164
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public setAuthorLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setDateLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setFeedbackMessageViewBgAndTextColor(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const v1, -0x333334

    .line 186
    if-nez p1, :cond_2

    .line 187
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 188
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->a(I)V

    .line 189
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->b(I)V

    .line 1174
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_1
    return-void

    .line 190
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 192
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->a(I)V

    .line 193
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->b(I)V

    goto :goto_0
.end method

.method public setMessageLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method
