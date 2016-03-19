.class final Landroid/support/design/widget/TabLayout$e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;

.field private final b:Landroid/support/design/widget/TabLayout$c;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$c;)V
    .locals 4

    .prologue
    .line 1181
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    .line 1182
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1179
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    .line 1183
    iput-object p3, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    .line 1184
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1189
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    .line 1190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setOrientation(I)V

    .line 1191
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->a()V

    .line 1192
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1355
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1356
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->d()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1358
    if-eqz p3, :cond_0

    .line 1359
    if-eqz v0, :cond_3

    .line 1360
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1362
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->setVisibility(I)V

    .line 1367
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v3, v0

    .line 1371
    :goto_1
    if-eqz p2, :cond_1

    .line 1372
    if-eqz v3, :cond_5

    .line 1373
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1375
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->setVisibility(I)V

    .line 1383
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 1384
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1386
    if-eqz v3, :cond_7

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1388
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1, v4}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1390
    :goto_3
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, v4, :cond_2

    .line 1391
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1392
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 1396
    :cond_2
    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1397
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$e;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1402
    :goto_4
    return-void

    .line 1364
    :cond_3
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1365
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 1370
    goto :goto_1

    .line 1378
    :cond_5
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1399
    :cond_6
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$e;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1400
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->setLongClickable(Z)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1292
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    .line 1293
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$c;->a()Landroid/view/View;

    move-result-object v2

    .line 1294
    if-eqz v2, :cond_9

    .line 1295
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1296
    if-eq v0, p0, :cond_1

    .line 1297
    if-eqz v0, :cond_0

    .line 1298
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1300
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;)V

    .line 1302
    :cond_1
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    .line 1303
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1304
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1307
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    .line 1312
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1313
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    .line 1315
    :cond_4
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    .line 1326
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    if-nez v0, :cond_b

    .line 1328
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 1329
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1331
    invoke-virtual {p0, v0, v4}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;I)V

    .line 1332
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    .line 1334
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 1335
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_text:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1337
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;)V

    .line 1338
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    .line 1339
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    .line 1341
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->k(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1342
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1343
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1345
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1352
    :cond_8
    :goto_1
    return-void

    .line 1318
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1319
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->removeView(Landroid/view/View;)V

    .line 1320
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    .line 1322
    :cond_a
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    .line 1323
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    goto :goto_0

    .line 1348
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1349
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public final b()Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1215
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1216
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1223
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1406
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1407
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getLocationOnScreen([I)V

    .line 1409
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1410
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getWidth()I

    move-result v2

    .line 1411
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v3

    .line 1412
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1414
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$c;->f()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1417
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1420
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1421
    const/4 v0, 0x1

    return v0
.end method

.method public final onMeasure(II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1228
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1230
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    .line 1235
    if-lez v4, :cond_1

    if-eqz v2, :cond_0

    if-le v0, v4, :cond_1

    .line 1239
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1246
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1249
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1250
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getResources()Landroid/content/res/Resources;

    .line 1251
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->h(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    .line 1252
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    .line 1254
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    .line 1262
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 1263
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    .line 1264
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    .line 1266
    cmpl-float v7, v2, v4

    if-nez v7, :cond_3

    if-ltz v6, :cond_6

    if-eq v0, v6, :cond_6

    .line 1270
    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    if-ne v6, v1, :cond_5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    if-ne v5, v1, :cond_5

    .line 1275
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1276
    if-eqz v4, :cond_4

    .line 2432
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    div-float v6, v2, v6

    mul-float/2addr v5, v6

    .line 1276
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    :cond_4
    move v1, v3

    .line 1282
    :cond_5
    if-eqz v1, :cond_6

    .line 1283
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1284
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1285
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1289
    :cond_6
    return-void

    .line 1257
    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 1259
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    goto :goto_0
.end method

.method public final setSelected(Z)V
    .locals 1

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 1197
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1198
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1199
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->sendAccessibilityEvent(I)V

    .line 1201
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1204
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1208
    :cond_1
    return-void

    .line 1196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
