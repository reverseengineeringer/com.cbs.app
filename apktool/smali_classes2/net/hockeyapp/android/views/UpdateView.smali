.class public Lnet/hockeyapp/android/views/UpdateView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;B)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 63
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    .line 64
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    .line 81
    if-eqz p2, :cond_1

    .line 1096
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1097
    if-ne v0, v10, :cond_0

    .line 1098
    iput-boolean v8, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    .line 87
    :goto_0
    iput-boolean p3, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    .line 1106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1107
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/UpdateView;->setBackgroundColor(I)V

    .line 1108
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 1113
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1116
    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_2

    .line 1117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1118
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1119
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1125
    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0xe6

    const/16 v3, 0xec

    const/16 v4, 0xef

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1128
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 1136
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1137
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1139
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1140
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1141
    invoke-virtual {v3, v4, v4, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1142
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1144
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1145
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1146
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1148
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1150
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1129
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 1154
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1155
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1157
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1158
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1159
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 1160
    invoke-virtual {v3, v4, v5, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1161
    const/4 v4, 0x3

    const/16 v5, 0x1002

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1162
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1164
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1165
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 1166
    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1167
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1168
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1169
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1171
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1130
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 1176
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1177
    const/16 v3, 0x1004

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 1179
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1180
    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1182
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1183
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1184
    const/16 v3, 0x9

    invoke-virtual {v5, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1185
    const/4 v3, 0x3

    const/16 v4, 0x1003

    invoke-virtual {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1186
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1197
    new-array v4, v8, [I

    const v5, -0x10100a7

    aput v5, v4, v7

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1198
    new-array v4, v10, [I

    fill-array-data v4, :array_0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xbbbbbc

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1199
    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0x777778

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1187
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1188
    const-string v3, "Update"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1190
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1192
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1132
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 1238
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1239
    const/16 v0, 0x1005

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setId(I)V

    .line 1241
    const/high16 v0, 0x43c80000    # 400.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1242
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1243
    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_4

    .line 1244
    const/16 v0, 0x1001

    invoke-virtual {v3, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1249
    :goto_3
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1250
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1253
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 92
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 2205
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    .line 2208
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2209
    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_5

    .line 2210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2211
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2212
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2219
    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2221
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2223
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2224
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2225
    iget-boolean v3, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v3, :cond_6

    .line 2226
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2231
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2232
    invoke-static {}, Lnet/hockeyapp/android/e/g;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2234
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 1101
    :cond_0
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    goto/16 :goto_0

    .line 85
    :cond_1
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    goto/16 :goto_0

    .line 1122
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1123
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 1242
    goto/16 :goto_2

    .line 1247
    :cond_4
    const/4 v0, 0x3

    const/16 v4, 0x1001

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 2215
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2216
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2217
    invoke-static {}, Lnet/hockeyapp/android/e/g;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 2229
    :cond_6
    const/4 v1, 0x3

    const/16 v3, 0x1001

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 1198
    nop

    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method
