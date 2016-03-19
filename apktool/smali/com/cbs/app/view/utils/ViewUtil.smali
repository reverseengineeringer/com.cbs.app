.class public Lcom/cbs/app/view/utils/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Dialog;)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    const v0, 0x7f0f018d

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    if-eqz p0, :cond_0

    .line 99
    const v0, 0x7f0f03af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 101
    check-cast v0, Landroid/widget/FrameLayout;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Dialog;I)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Dialog;I)Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 62
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Dialog;)Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    const v0, 0x7f0f018e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 91
    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;I)Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 81
    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
