.class final Lcom/cbs/app/view/SplashActivity2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/SplashActivity2;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$d;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iput p2, p0, Lcom/cbs/app/view/SplashActivity2$d;->a:I

    .line 1120
    iput p3, p0, Lcom/cbs/app/view/SplashActivity2$d;->b:I

    .line 1121
    iput-object p4, p0, Lcom/cbs/app/view/SplashActivity2$d;->c:Landroid/graphics/Bitmap;

    .line 1122
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const v14, 0x7f0f00a8

    const/16 v11, 0x8

    const-wide/high16 v12, 0x405e000000000000L    # 120.0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1125
    iget-object v4, p0, Lcom/cbs/app/view/SplashActivity2$d;->d:Lcom/cbs/app/view/SplashActivity2;

    .line 1126
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$d;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {v4, v14}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1131
    check-cast v0, Landroid/widget/ImageView;

    .line 1132
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/view/SplashActivity2$d;->a:I

    iget v2, p0, Lcom/cbs/app/view/SplashActivity2$d;->b:I

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1133
    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v2

    .line 1134
    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v1

    .line 1137
    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1138
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1139
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    .line 1142
    :goto_0
    div-int/lit8 v1, v2, 0x2

    iget v3, p0, Lcom/cbs/app/view/SplashActivity2$d;->b:I

    sub-int/2addr v1, v3

    .line 1143
    if-gtz v1, :cond_4

    .line 1144
    invoke-static {v4, v12, v13}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    move v3, v1

    .line 1146
    :goto_1
    invoke-virtual {v5, v9, v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1147
    const/16 v1, 0xe

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1148
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1151
    invoke-virtual {v4}, Lcom/cbs/app/view/SplashActivity2;->getSplashRootView()Landroid/view/View;

    move-result-object v5

    .line 1152
    if-eqz v5, :cond_1

    .line 1153
    const v1, 0x7f0f00a9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1154
    if-eqz v1, :cond_0

    instance-of v6, v1, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1155
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1156
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    iget v8, p0, Lcom/cbs/app/view/SplashActivity2$d;->b:I

    add-int/2addr v3, v8

    sub-int/2addr v2, v3

    invoke-direct {v6, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1158
    const/4 v2, 0x3

    invoke-virtual {v6, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1159
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v4, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v6, v9, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1160
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1163
    :cond_0
    const v1, 0x7f0f00ab

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$d;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v2}, Lcom/cbs/app/view/SplashActivity2;->p(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1166
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    :cond_1
    :goto_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v4, v12, v13}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v10, v10, v2, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1173
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1174
    new-instance v2, Lcom/cbs/app/view/SplashActivity2$a;

    iget-object v3, p0, Lcom/cbs/app/view/SplashActivity2$d;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {v2, v3}, Lcom/cbs/app/view/SplashActivity2$a;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1175
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1178
    :cond_2
    return-void

    .line 1168
    :cond_3
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto/16 :goto_0
.end method
