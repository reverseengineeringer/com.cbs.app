.class public Lcom/cbs/app/widget/ObservableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/cbs/app/widget/HorizontalScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    .line 18
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/cbs/app/widget/HorizontalScrollViewListener;->a(Lcom/cbs/app/widget/ObservableHorizontalScrollView;II)V

    .line 34
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/cbs/app/widget/HorizontalScrollViewListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->a:Lcom/cbs/app/widget/HorizontalScrollViewListener;

    .line 26
    return-void
.end method
