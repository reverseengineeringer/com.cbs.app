.class final Lcom/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    check-cast p1, Lcom/viewpagerindicator/TabPageIndicator$b;

    .line 58
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    .line 59
    invoke-virtual {p1}, Lcom/viewpagerindicator/TabPageIndicator$b;->a()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 64
    return-void
.end method
